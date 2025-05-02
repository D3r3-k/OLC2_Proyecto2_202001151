"use client";

import type React from "react";

import {
  useState,
  useEffect,
  createContext,
  useContext,
  useCallback,
} from "react";
import { AnimatePresence, motion } from "framer-motion";
import { Check } from "lucide-react";

// Toast context
type ToastContextType = {
  showToast: (message?: string) => void;
};

const ToastContext = createContext<ToastContextType | undefined>(undefined);

// Toast provider component
export function ToastProvider({ children }: { children: React.ReactNode }) {
  const [visible, setVisible] = useState(false);
  const [message, setMessage] = useState("Copiado");
  const [toastId, setToastId] = useState(0);

  const showToast = useCallback((newMessage?: string) => {
    setMessage(newMessage || "Copiado");
    setVisible(true);
    setToastId((prev) => prev + 1); // Force re-render for animation
  }, []);

  useEffect(() => {
    let timer: NodeJS.Timeout;

    if (visible) {
      timer = setTimeout(() => {
        setVisible(false);
      }, 2000);
    }

    return () => {
      if (timer) clearTimeout(timer);
    };
  }, [visible, toastId]);

  return (
    <ToastContext.Provider value={{ showToast }}>
      {children}
      <AnimatePresence>
        {visible && (
          <motion.div
            key={toastId}
            initial={{ x: 100, opacity: 0 }}
            animate={{ x: 0, opacity: 1 }}
            exit={{ x: 100, opacity: 0 }}
            transition={{ type: "spring", stiffness: 400, damping: 30 }}
            className="fixed top-4 right-4 z-50 flex items-center gap-2 rounded-lg bg-gray-700 px-4 py-3 text-sm font-medium text-white shadow-lg"
          >
            <Check className="h-4 w-4 text-green-400" />
            {message}
          </motion.div>
        )}
      </AnimatePresence>
    </ToastContext.Provider>
  );
}

// Hook to use the toast
export function useToast() {
  const context = useContext(ToastContext);

  if (context === undefined) {
    throw new Error("useToast must be used within a ToastProvider");
  }

  return context;
}
