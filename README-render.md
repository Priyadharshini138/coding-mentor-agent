Render deployment steps
=======================

1. Push this repository to GitHub.
2. In Render, create a new Web Service and connect the repository.

Backend service:
   - Root Directory: leave blank
   - Environment: Java
   - Build Command: cd coding-mentor-backend && mvn -DskipTests package
   - Start Command: cd coding-mentor-backend && java -jar target/*.jar
   - Environment Variables:
     - PORT=10000
     - JWT_SECRET=change-me
     - GEMINI_API_KEY=your_gemini_key
     - FRONTEND_ORIGIN=https://your-frontend.onrender.com

Frontend service:
   - Create a second Static Site service, or use a Web Service with Node if Static is unavailable.
   - Root Directory: coding-mentor-frontend
   - Build Command: npm install && npm run build
   - Publish Directory: dist

Optional Node web service settings for frontend:
   - Environment: Node
   - Root Directory: coding-mentor-frontend
   - Build Command: npm install && npm run build
   - Start Command: npm run preview -- --host 0.0.0.0 --port $PORT
