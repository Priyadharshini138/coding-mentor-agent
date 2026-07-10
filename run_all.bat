@echo off
setlocal

rem ------------------------------------------------------------
rem  Run both backend (Spring Boot) and frontend (Vite) on Windows
rem  Place this file in the root folder:
rem  C:\Users\jaikanth\OneDrive\ドキュメント\New Coding Agent\
rem ------------------------------------------------------------

rem Absolute paths to the two projects (adjust if you moved them)
set "BACKEND_DIR=%~dp0coding-mentor-backend"
set "FRONTEND_DIR=%~dp0coding-mentor-frontend"

rem ---- Start the Spring Boot backend ------------------------------------
start "Backend - Spring Boot" cmd /k "cd /d "%BACKEND_DIR%" && .\mvnw.cmd spring-boot:run"

rem ---- Start the Vite dev server (frontend) ---------------------------
start "Frontend - Vite" cmd /k "cd /d "%FRONTEND_DIR%" && npm run dev"

echo.
echo ==============================================
echo Both services have been launched in separate windows.
echo Close the windows when you are done testing.
echo ==============================================
pause
