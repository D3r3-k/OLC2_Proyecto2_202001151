"use client";

import type React from "react";

import { useState, useEffect } from "react";
import { X } from "lucide-react";
import { AlertModalProps } from "@/interfaces/interfaces";

export function AlertModalButton({
  isOpen = false,
  onClose,
  title,
  children,
  variant = "info",
  size = "default",
  buttons = false,
  acceptFunction,
  cancelFunction,
}: AlertModalProps) {
  const [isModalOpen, setIsModalOpen] = useState(isOpen);
  // Handle escape key press
  useEffect(() => {
    const handleEscapeKey = (e: KeyboardEvent) => {
      if (e.key === "Escape" && isModalOpen) {
        onClose();
      }
    };

    document.addEventListener("keydown", handleEscapeKey);
    return () => document.removeEventListener("keydown", handleEscapeKey);
  }, [isModalOpen, onClose]);
  // Sync with props
  useEffect(() => {
    setIsModalOpen(isOpen);
  }, [isOpen]);

  if (!isModalOpen) return null;

  // Determine variant colors
  const variantStyles = {
    info: "border-blue-500",
    warning: "border-amber-500",
    error: "border-destructive",
    success: "border-green-500",
  };

  const handleAccept = () => {
    if (buttons && acceptFunction) {
      acceptFunction();
    }
    onClose();
  };

  const handleCancel = () => {
    if (buttons && cancelFunction) {
      cancelFunction();
    }
    onClose();
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/70 p-4 backdrop-blur-sm">
      <div
        className={`relative w-full rounded-lg border-l-4 bg-gray-900 p-0 shadow-lg ${
          variantStyles[variant]
        } ${size === "large" ? "max-w-4xl" : "max-w-md"}`}
        role="alertdialog"
        aria-modal="true"
        aria-labelledby="alert-modal-title"
      >
        <div className="flex items-center justify-between border-b border-gray-800 p-4">
          <h2
            id="alert-modal-title"
            className="text-lg font-semibold text-gray-100"
          >
            {title}
          </h2>
          <button
            onClick={onClose}
            className="h-8 w-8 rounded-full text-gray-400 hover:text-gray-100"
            aria-label="Close"
          >
            <X className="h-4 w-4" />
          </button>
        </div>
        <div className="p-4 text-gray-300">{children}</div>
        {buttons && (
          <div className="flex justify-end space-x-2 p-4 border-t border-gray-800">
            <button
              onClick={handleCancel}
              className="px-4 py-2 text-sm font-medium text-gray-300 bg-gray-700 rounded hover:bg-gray-600"
            >
              Cancelar
            </button>
            <button
              onClick={handleAccept}
              className="px-4 py-2 text-sm font-medium text-gray-100 bg-purple-900 rounded hover:bg-purple-800"
            >
              Aceptar
            </button>
          </div>
        )}
      </div>
    </div>
  );
}
