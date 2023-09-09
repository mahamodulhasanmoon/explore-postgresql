import { Request, Response } from "express"; // Import Request and Response types

import { createUserService } from "./user.services";

export const createUserController = async (req: Request, res: Response) => {
  try {
    const result = await createUserService(req.body);
    res.status(200).json({
      success: true, 
      data: result,
    });
  } catch (error:any) {
    res.status(500).json({ 
      success: false, 
      error: error.message, 
    });
  }
};
