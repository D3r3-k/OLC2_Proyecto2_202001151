import { FetchReports } from "@/interfaces/interfaces";

export const fetchSymbols = async ({
  setIsLoading,
  setIsModalMessageOpen,
  setModalMessage,
  setModalTableData,
  setIsModalTableOpen,
}: FetchReports) => {
  setIsLoading(true);
  try {
    const response = await fetch(
      `${process.env.NEXT_PUBLIC_API_URL}/reports/symbols`
    );
    if (!response.ok) {
      const data = await response.json();
      throw new Error(
        data.error || "Error en la petición: " + response.statusText
      );
    }
    const data = await response.json();
    setModalTableData({
      title: "Tabla de Simbolos",
      variant: "info",
      type: "symbols",
      header: data.header,
      data: data.symbols,
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
