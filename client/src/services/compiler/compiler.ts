import { ModalMessage } from "@/interfaces/interfaces";

type params = {
  input: string;
  setIsLoading: (is: boolean) => void;
  setOutput: (os: string) => void;
  setModalMessage: (message: ModalMessage) => void;
  setIsModalMessageOpen: (is: boolean) => void;
};

export const compileCode = async ({
  input,
  setIsLoading,
  setIsModalMessageOpen,
  setModalMessage,
  setOutput,
}: params) => {
  if (input.trim() === "") {
    setModalMessage({
      title: "Entrada Vacia",
      content: "No hay contenido para ejecutar",
      variant: "warning",
    });
    setIsModalMessageOpen(true);
    return;
  }
  setIsLoading(true);
  try {
    setOutput("");
    const response = await fetch(`${process.env.NEXT_PUBLIC_API_URL}/compile`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ code: input }),
    });    
    if (!response.ok) {
      const data = await response.json();
      throw new Error(
        data.error || "Error en la petición: " + response.statusText
      );
    }
    const data = await response.json();
    let consoleData = data.result;
    setOutput(consoleData);
  } catch (error: any) {
    setModalMessage({
      title: "Error",
      content: error.message,
      variant: "error",
    });
    setIsModalMessageOpen(true);
  } finally {
    setIsLoading(false);
  }
};
