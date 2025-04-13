export interface AlertModalProps {
  isOpen?: boolean;
  onClose: () => void;
  title: string;
  children: React.ReactNode;
  variant?: "info" | "warning" | "error" | "success";
  size?: "default" | "large";
  buttons?: boolean;
  acceptFunction?: () => void;
  cancelFunction?: () => void;
}
export interface AlertModalSvgProps {
  isOpen?: boolean;
  onClose: () => void;
  title: string;
  variant?: "info" | "warning" | "error" | "success";
  size?: "default" | "large";
  children: React.ReactNode;
}

export interface LoadingToastProps {
  show: boolean;
}

export interface ModalMessage {
  title: string;
  content: any;
  variant: "error" | "success" | "warning" | "info";
  buttons?: boolean;
}

export interface ModalTableData {
  title: string;
  variant: "error" | "success" | "warning" | "info";
  type: "errors" | "symbols";
  header: [];
  data: [];
}
export interface TableAlertModalProps {
  isOpen?: boolean;
  handleClose: () => void;
  title: string;
  variant?: "info" | "warning" | "error" | "success";
  modalTableData: ModalTableData;
}

export interface FetchReports {
  setIsLoading: (is: boolean) => void;
  setIsModalTableOpen: (is: boolean) => void;
  setModalMessage: (message: ModalMessage) => void;
  setIsModalMessageOpen: (is: boolean) => void;
  setModalTableData: (data: ModalTableData) => void;
}
export interface FetchReportsAST {
  setIsLoading: (is: boolean) => void;
  input: string;
  setIsModalMessageOpen: (is: boolean) => void;
  setModalMessage: (message: ModalMessage) => void;
  setIsModalSvgOpen: (is: boolean) => void;
}
