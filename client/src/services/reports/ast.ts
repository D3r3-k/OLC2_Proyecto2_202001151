import { FetchReportsAST } from "@/interfaces/interfaces";

export const fetchAST = async ({
  setIsLoading,
  input,
  setIsModalMessageOpen,
  setModalMessage,
  setIsModalSvgOpen,
}: FetchReportsAST) => {
  setIsLoading(true);
  try {
    const response = await fetch(
      `${process.env.NEXT_PUBLIC_API_URL}/reports/ast`,
      {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ code: input }),
      }
    );
    if (!response.ok) {
      const data = await response.json();
      throw new Error(
        data.error || "Error en la petición: " + response.statusText
      );
    }
    const data = await response.text();
    setModalMessage({
      title: "AST",
      variant: "success",
      content: data,
    });
    setIsModalSvgOpen(true);
  } catch (error: any) {
    setModalMessage({
      title: "Error en la petición",
      content: error.message,
      variant: "error",
    });
    setIsModalMessageOpen(true);
  } finally {
    setIsLoading(false);
  }
};
