import { Request, Response } from "express"; // Import Request and Response types

import { createUserService, getAllUserService, getSingleUserService, updateProfileService } from "./user.services";

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
export const updateProfileController = async (req: Request, res: Response) => {
  try {
    const result = await updateProfileService(req.body);
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
export const getAllUserController = async (req: Request, res: Response) => {
  try {
    const result = await getAllUserService();
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
export const getSingleUserController = async (req: Request, res: Response) => {
  try {
    const result = await getSingleUserService(+req.params.id);
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
