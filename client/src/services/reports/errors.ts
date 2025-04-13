import { FetchReports } from "@/interfaces/interfaces";

export const fetchErrors = async ({
  setIsLoading,
  setIsModalMessageOpen,
  setModalMessage,
  setModalTableData,
  setIsModalTableOpen,
}: FetchReports) => {
  setIsLoading(true);
  try {
    const response = await fetch(
      `${process.env.NEXT_PUBLIC_API_URL}/reports/errors`
    );
    if (!response.ok) {
      const data = await response.json();
      throw new Error(
        data.error || "Error en la petición: " + response.statusText
      );
    }
    const data = await response.json();
    setModalTableData({
      title: "Tabla de Errores",
      variant: "error",
      type: "errors",
      header: data.header,
      data: data.errors,
    });
    setIsModalTableOpen(true);
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
