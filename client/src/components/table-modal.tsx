"use client";

import { TableAlertModalProps } from "@/interfaces/interfaces";
import { AlertModal } from "./alert-modal";

export default function TableAlertModal({
  isOpen,
  handleClose,
  title,
  variant,
  modalTableData,
}: TableAlertModalProps) {
  return (
    <AlertModal
      isOpen={isOpen}
      onClose={handleClose}
      title={title}
      variant={variant || "info"}
      size="large"
    >
      <div className="space-y-4">
        {/* Scrollable table container */}
        <div className="max-h-[400px] overflow-auto rounded border border-gray-700">
          <table className="w-full min-w-full table-auto">
            <thead className="sticky top-0 bg-gray-800">
              <tr>
                {
                  modalTableData.header.map((item: string, index: number) => (
                    <th
                      key={index}
                      className="border-b border-gray-700 px-4 py-2 text-gray-300"
                    >
                      {item}
                    </th>
                  ))
                }
              </tr>
            </thead>
            <tbody>
              {modalTableData.data.map((item:any, index: number) => (
                <tr key={index} className="bg-gray-800 hover:bg-gray-700">
                  {item.map((cell: string, index: number) => (
                    <td
                      key={index}
                      className="border-b border-gray-700 px-4 py-2 text-gray-300 text-center"
                    >
                      {cell}
                    </td>
                  ))}
                </tr>
              ))}
            </tbody>
          </table>
        </div>

        <div className="text-sm text-gray-400">
          <p>Total: {modalTableData.data.length}</p>
        </div>
      </div>
    </AlertModal>
  );
}
