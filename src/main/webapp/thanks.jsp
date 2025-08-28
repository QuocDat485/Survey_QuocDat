<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Thank You</title>
    <link rel="stylesheet" href="styles/survey.css">
    <style>
        /* Thêm hiệu ứng fade-in khi tải trang */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        body {
            background: linear-gradient(135deg, #e3f2fd, #bbdefb); /* Gradient nền nhẹ nhàng */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
        }

        .container {
            width: 650px; /* Tăng kích thước để trông hoành tráng hơn */
            padding: 40px 50px;
            background: rgba(255, 255, 255, 0.95); /* Nền trong suốt nhẹ */
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            animation: fadeIn 1s ease-in;
        }

        header {
            text-align: center;
            margin-bottom: 40px;
        }

        header img {
            width: 120px; /* Tăng kích thước logo */
            margin-bottom: 15px;
            border-radius: 50%; /* Làm tròn logo */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            font-size: 28px;
            color: #1565c0; /* Xanh dương đậm hơn */
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        main h1 {
            font-size: 32px;
            color: #1976d2;
            text-align: center;
            margin-bottom: 20px;
            background: linear-gradient(90deg, #1976d2, #42a5f5);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        main p {
            font-size: 16px;
            color: #34495e;
            text-align: center;
            margin-bottom: 25px;
        }

        section {
            margin-bottom: 30px;
            padding: 20px;
            background: #f9fbfd;
            border-left: 6px solid #1976d2;
            border-radius: 10px;
        }

        section h2 {
            font-size: 20px;
            color: #1565c0;
            margin-bottom: 15px;
        }

        ul {
            list-style: none;
            padding-left: 0;
        }

        ul li {
            font-size: 15px;
            color: #2c3e50;
            margin-bottom: 10px;
            padding-left: 20px;
            position: relative;
        }

        ul li::before {
            content: "✔"; /* Ký hiệu checkmark */
            color: #2196f3;
            position: absolute;
            left: 0;
        }

        .return-btn {
            display: inline-block;
            margin-top: 30px;
            padding: 15px 30px;
            background: linear-gradient(45deg, #1976d2, #42a5f5);
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            border-radius: 12px;
            text-decoration: none;
            text-align: center;
            transition: all 0.4s ease;
            box-shadow: 0 5px 15px rgba(25, 118, 210, 0.3);
        }

        .return-btn:hover {
            background: linear-gradient(45deg, #1565c0, #1e88e5);
            transform: translateY(-3px);
            box-shadow: 0 7px 20px rgba(25, 118, 210, 0.5);
        }
    </style>
</head>
<body>
<div class="container">
    <header>
        <img src="images/murachlogo.jpg" alt="Murach Logo">
        <h1>Survey of Quoc Dat 23133015</h1>
    </header>

    <main>
        <h1>Thank You!</h1>
        <p>We appreciate your time in completing this survey. Here is the information you submitted:</p>

        <section>
            <h2>Your Information</h2>
            <ul>
                <li><strong>First Name:</strong> ${user.firstName}</li>
                <li><strong>Last Name:</strong> ${user.lastName}</li>
                <li><strong>Email:</strong> ${user.email}</li>
                <li><strong>Date of Birth:</strong> ${user.dob}</li>
            </ul>
        </section>

        <section>
            <h2>Survey Details</h2>
            <ul>
                <li><strong>How did you hear about us?</strong> ${user.heardFrom}</li>
                <li><strong>Receive updates:</strong> ${user.wantsUpdates}</li>
                <li><strong>Email announcements:</strong> ${user.emailAnnouncements}</li>
                <li><strong>Preferred contact:</strong> ${user.contactVia}</li>
            </ul>
        </section>

        <p>
            <a href="index.html" class="return-btn">Back to Survey</a>
        </p>
    </main>
</div>
</body>
</html>