import { LoadingToastProps } from "@/interfaces/interfaces"
import { Loader2 } from "lucide-react"

export function LoadingToast({ show }: LoadingToastProps) {
  if (!show) return null

  return (
    <div className="fixed top-4 right-4 bg-white dark:bg-slate-800 shadow-lg rounded-lg p-4 flex items-center gap-2 transition-all duration-300 transform animate-in fade-in slide-in-from-top-4 border border-gray-300 dark:border-gray-700 z-10">
      <Loader2 className="h-4 w-4 animate-spin text-black dark:text-white" />
      <span className="text-sm font-medium text-black dark:text-white">Ejecutando...</span>
    </div>
  )
}

