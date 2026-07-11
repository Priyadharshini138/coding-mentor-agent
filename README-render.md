Render deployment steps
=======================

1. Push this repository to GitHub.
2. In Render, create a new Web Service and connect the repository.
3. Use the following settings:
   - Build Command: cd coding-mentor-backend && mvn -DskipTests package
   - Start Command: cd coding-mentor-backend && java -jar target/*.jar
4. Add environment variables:
   - PORT=10000
   - JWT_SECRET=change-me
   - GEMINI_API_KEY=your_gemini_key
   - FRONTEND_ORIGIN=https://your-frontend.onrender.com
5. Deploy.

If you also want to host the frontend on Render, create a second web service for the frontend folder with:
   - Build Command: npm install && npm run build
   - Publish Directory: dist
