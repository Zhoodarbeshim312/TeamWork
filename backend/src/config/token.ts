import jwt from "jsonwebtoken";
const JWT_SECRET = process.env.JWT_SECRET!;
export const generateToken = (
  userId: string,
  userEmail: string,
  role: "USER" | "ADMIN",
) => {
  return jwt.sign(
    {
      id: userId,
      email: userEmail,
      role,
    },
    JWT_SECRET,
    { expiresIn: "8h" },
  );
};
export const verifyToken = (token: string) => {
  const decoded = jwt.verify(token, JWT_SECRET) as {
    id: string;
    email: string;
    role: "USER" | "ADMIN";
  };
  return {
    userId: decoded.id,
    userEmail: decoded.email,
    role: decoded.role,
  };
};
