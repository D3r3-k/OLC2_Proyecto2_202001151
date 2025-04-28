"use client";
import { useState, useEffect, useCallback } from "react";
import {
  ChevronDown,
  Play,
  FileText,
  Save,
  FolderOpen,
  AlertCircle,
  List,
  GitBranch,
  Database,
  MoreHorizontal,
  TerminalSquare,
  TerminalIcon,
} from "lucide-react";
import { LoadingToast } from "@/components/loading-toast";
import { compileCode } from "@/services/compiler/compiler";
import ReactCodeMirror from "@uiw/react-codemirror";
import { dracula } from "@uiw/codemirror-theme-dracula";
import { StreamLanguage } from "@codemirror/language";
import { go } from "@codemirror/legacy-modes/mode/go";
import { AlertModal } from "@/components/alert-modal";
import TableAlertModal from "@/components/table-modal";
import { ModalMessage, ModalTableData } from "@/interfaces/interfaces";
import { fetchSymbols } from "@/services/reports/symbols";
import { fetchErrors } from "@/services/reports/errors";
import { AlertModalButton } from "@/components/alert-modal-button";
import { fetchAST } from "@/services/reports/ast";
import { AlertModalSvg } from "@/components/alert-modal-svg";

export default function Home() {
  // TODO: Modal
  const [modalMessage, setModalMessage] = useState<ModalMessage>({
    title: "",
    content: "",
    variant: "info",
  });
  const [modalTableData, setModalTableData] = useState<ModalTableData>({
    title: "",
    variant: "info",
    type: "symbols",
    header: [],
    data: [],
  });
  const [isModalMessageOpen, setIsModalMessageOpen] = useState(false);
  const [isModalTableOpen, setIsModalTableOpen] = useState(false);
  const [isModalMessageBtnOpen, setIsModalMessageBtnOpen] = useState(false);
  const [isModalSvgOpen, setIsModalSvgOpen] = useState(false);
  // TODO: Sidebar
  const [archivoOpen, setArchivoOpen] = useState(true);
  const [reporteOpen, setReporteOpen] = useState(true);
  const handleClose = () => {
    setIsModalMessageOpen(false);
  };
  const handleTableClose = () => {
    setIsModalTableOpen(false);
  };
  const handleCloseButton = () => {
    setIsModalMessageBtnOpen(false);
  };
  // TODO: Loading
  const [isLoading, setIsLoading] = useState(false);

  // TODO: Terminales
  const [input, setInput] = useState("");
  const [output, setOutput] = useState("");
  const handleInputChange = useCallback((value: string) => {
    setInput(value);
  }, []);

  // TODO: ARCHIVOS

  const handleNewFile = () => {
    if (input.trim() !== "") {
      setModalMessage({
        title: "Advertencia",
        variant: "warning",
        content:
          "¿Está seguro de que desea crear un nuevo archivo? <br />Se perderán los cambios no guardados.",
      });
      setIsModalMessageBtnOpen(true);
    }
  };

  const handleOpenFile = () => {
    setIsLoading(true);
    return new Promise<void>((resolve, reject) => {
      const inputElement = document.createElement("input");
      inputElement.type = "file";
      inputElement.accept = ".glt";
      inputElement.onchange = (event: Event) => {
        const file = (event.target as HTMLInputElement).files?.[0];

        if (file) {
          const reader = new FileReader();
          reader.onload = () => {
            const fileContent = reader.result as string;
            setInput(fileContent);
            setOutput("");
            setIsLoading(false);
            resolve();
          };

          reader.onerror = () => {
            setIsLoading(false);
            reject(new Error("Error al leer el archivo"));
          };

          reader.readAsText(file);
        } else {
          setIsLoading(false);
          reject(new Error("No se seleccionó ningún archivo"));
        }
      };

      inputElement.oncancel = () => {
        setIsLoading(false);
      };
      inputElement.click();
    });
  };

  const handleSave = () => {
    if (input.trim() === "") {
      setModalMessage({
        title: "Error",
        variant: "error",
        content: "No hay contenido para guardar",
      });
      setIsModalMessageOpen(true);
    } else {
      setIsLoading(true);
      return new Promise<void>((resolve) => {
        setTimeout(() => {
          const blob = new Blob([input], { type: "text/plain" });
          const link = document.createElement("a");
          link.href = URL.createObjectURL(blob);
          link.download = "ocl_file.glt";

          document.body.appendChild(link);
          link.click();
          document.body.removeChild(link);

          setIsLoading(false);
          setIsModalMessageOpen(false);
          resolve();
        }, 2000);
      });
    }
  };

  return (
    <main className="flex min-h-screen bg-slate-950 transition-colors duration-200">
      <>
        <div className="min-w-64 min-h-screen bg-slate-900 border-r border-slate-700 flex flex-col transition-colors duration-200">
          {/* Cabecera */}
          <div className="p-4 border-b border-slate-700 text-center">
            <div className="flex items-center gap-2 justify-center">
              <TerminalSquare size={32} color="white" />
              <h1 className="text-xl font-bold text-white">GoLight</h1>
            </div>
            <span className="text-sm text-gray-400">Proyecto 1 - OLC 2</span>
          </div>

          {/* Menú principal */}
          <div className="flex-1 p-2">
            {/* Botón Ejecutar */}
            <button
              onClick={() =>
                compileCode({
                  input,
                  setIsLoading,
                  setOutput,
                  setIsModalMessageOpen,
                  setModalMessage,
                })
              }
              className="w-full flex items-center gap-2 p-3 mb-2 rounded-md bg-purple-900 text-white hover:bg-purple-800 transition-colors"
            >
              <Play size={18} />
              <span>Ejecutar</span>
            </button>

            {/* Dropdown Archivo */}
            <div className="mb-2">
              <button
                onClick={() => setArchivoOpen(!archivoOpen)}
                className="w-full flex items-center justify-between p-3 rounded-md hover:bg-slate-800 transition-colors text-white"
              >
                <div className="flex items-center gap-2">
                  <FileText size={18} />
                  <span>Archivo</span>
                </div>
                <ChevronDown
                  size={18}
                  className={`transform transition-transform duration-200 ${
                    archivoOpen ? "rotate-180" : ""
                  }`}
                />
              </button>

              <div
                className={`overflow-hidden transition-all duration-300 ease-in-out ${
                  archivoOpen ? "max-h-40 opacity-100" : "max-h-0 opacity-0"
                }`}
              >
                <div className="ml-6 mt-1 border-l-2 border-slate-700 pl-2">
                  <button
                    onClick={handleNewFile}
                    className="w-full flex items-center gap-2 p-2 rounded-md hover:bg-slate-800 transition-colors text-white"
                  >
                    <FileText size={16} />
                    <span>Nuevo archivo</span>
                  </button>
                  <button
                    onClick={handleOpenFile}
                    className="w-full flex items-center gap-2 p-2 rounded-md hover:bg-slate-800 transition-colors text-white"
                  >
                    <FolderOpen size={16} />
                    <span>Abrir Archivo</span>
                  </button>
                  <button
                    onClick={handleSave}
                    className="w-full flex items-center gap-2 p-2 rounded-md hover:bg-slate-800 transition-colors text-white"
                  >
                    <Save size={16} />
                    <span>Guardar Archivo</span>
                  </button>
                </div>
              </div>
            </div>

            {/* Dropdown Reporte */}
            <div className="mb-2">
              <button
                onClick={() => setReporteOpen(!reporteOpen)}
                className="w-full flex items-center justify-between p-3 rounded-md hover:bg-slate-800 transition-colors text-white"
              >
                <div className="flex items-center gap-2">
                  <AlertCircle size={18} />
                  <span>Reporte</span>
                </div>
                <ChevronDown
                  size={18}
                  className={`transform transition-transform duration-200 ${
                    reporteOpen ? "rotate-180" : ""
                  }`}
                />
              </button>

              <div
                className={`overflow-hidden transition-all duration-300 ease-in-out ${
                  reporteOpen ? "max-h-40 opacity-100" : "max-h-0 opacity-0"
                }`}
              >
                <div className="ml-6 mt-1 border-l-2 border-slate-700 pl-2">
                  <button
                    onClick={() =>
                      fetchErrors({
                        setIsLoading,
                        setIsModalMessageOpen,
                        setModalMessage,
                        setModalTableData,
                        setIsModalTableOpen,
                      })
                    }
                    className="w-full flex items-center gap-2 p-2 rounded-md hover:bg-slate-800 transition-colors text-white"
                  >
                    <AlertCircle size={16} />
                    <span>Errores</span>
                  </button>
                  <button
                    onClick={() =>
                      fetchSymbols({
                        setIsLoading,
                        setIsModalMessageOpen,
                        setModalMessage,
                        setModalTableData,
                        setIsModalTableOpen,
                      })
                    }
                    className="w-full flex items-center gap-2 p-2 rounded-md hover:bg-slate-800 transition-colors text-white"
                  >
                    <List size={16} />
                    <span>Simbolos</span>
                  </button>
                  <button
                    onClick={() => {
                      fetchAST({
                        setIsLoading,
                        input,
                        setIsModalMessageOpen,
                        setModalMessage,
                        setIsModalSvgOpen,
                      });
                    }}
                    className="w-full flex items-center gap-2 p-2 rounded-md hover:bg-slate-800 transition-colors text-white"
                  >
                    <GitBranch size={16} />
                    <span>AST</span>
                  </button>
                </div>
              </div>
            </div>
          </div>

          {/* Menú inferior */}
          <div className="p-2 border-t border-slate-700">
            <button
              onClick={() => {
                setModalMessage({
                  title: "Proyecto 1 - OLC 2",
                  content:
                    "<div className='p-4 text-gray-300'><p>Nombre: Derek Francisco Orellana Ibáñez</p><p>Carnet: 202001151</p><p>Curso: Lab Organizacion de Lenguajes y Compiladores 2</p><p>Sección: B</p></div>",
                  variant: "info",
                });
                setIsModalMessageOpen(true);
              }}
              className="w-full flex items-center gap-2 p-3 rounded-md hover:bg-slate-800 transition-colors text-white"
            >
              <Database size={18} />
              <span>Datos</span>
            </button>
          </div>
        </div>
        <LoadingToast show={isLoading} />
      </>
      <div className="flex-1 p-6 flex flex-col gap-4">
        <div className="flex-1 border rounded-lg overflow-hidden bg-[#282a36] border-[#44475a]">
          <div className="flex items-center gap-2 p-2 border-b bg-[#44475a] text-white border-[#44475a]">
            <TerminalIcon size={18} />
            <span className="font-medium">Entrada</span>
          </div>
          <ReactCodeMirror
            value={input}
            onChange={handleInputChange}
            height="375px"
            theme={dracula}
            editable={true}
            extensions={[StreamLanguage.define(go)]}
            className="text-sm"
            placeholder={""}
          />
        </div>
        <div className="flex-1 border rounded-lg overflow-hidden bg-[#282a36] border-[#44475a]">
          <div className="flex items-center  justify-between gap-2 p-2 border-b bg-[#44475a] text-white border-[#44475a]">
            <div className="flex items-center gap-2">
              <TerminalIcon size={18} />
              <span className="font-medium">Salida</span>
            </div>
            {output.trim() !== "" && (
              <button
              onClick={() => {
                const blob = new Blob([output], { type: "text/plain" });
                const link = document.createElement("a");
                link.href = URL.createObjectURL(blob);
                link.download = "program.s";
                document.body.appendChild(link);
                link.click();
                document.body.removeChild(link);
              }}
              className="flex items-center gap-2 p-2 rounded-md bg-gray-800 text-white hover:bg-gray-700 transition-colors"
              >
              <Save size={16} />
              <span>Descargar MakeFile</span>
              </button>
            )}
          </div>
          <ReactCodeMirror
            value={output}
            height="375px"
            theme={dracula}
            editable={false}
            extensions={[StreamLanguage.define(go)]}
            className="text-sm"
            placeholder={"Salida de consola..."}
          />
        </div>
      </div>
      {isModalMessageOpen && (
        <AlertModal
          onClose={handleClose}
          variant={modalMessage.variant}
          title={modalMessage.title}
          isOpen={isModalMessageOpen}
        >
          <div dangerouslySetInnerHTML={{ __html: modalMessage.content }}></div>
        </AlertModal>
      )}
      {isModalTableOpen && (
        <TableAlertModal
          title={modalTableData.title}
          variant={modalTableData.variant}
          modalTableData={modalTableData}
          isOpen={isModalTableOpen}
          handleClose={handleTableClose}
        ></TableAlertModal>
      )}
      {isModalMessageBtnOpen && (
        <AlertModalButton
          title={modalMessage.title}
          variant={modalMessage.variant}
          isOpen={isModalMessageBtnOpen}
          onClose={handleCloseButton}
          acceptFunction={() => {
            setInput("");
            setOutput("");
          }}
          buttons={true}
        >
          <div dangerouslySetInnerHTML={{ __html: modalMessage.content }}></div>
        </AlertModalButton>
      )}
      {isModalSvgOpen && (
        <AlertModalSvg
          title="AST"
          variant="info"
          size="large"
          isOpen={isModalSvgOpen}
          onClose={() => setIsModalSvgOpen(false)}
        >
          <div dangerouslySetInnerHTML={{ __html: modalMessage.content }}></div>
        </AlertModalSvg>
      )}
    </main>
  );
}
