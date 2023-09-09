import { PrismaClient, Profile, User } from "@prisma/client";

const prisma = new PrismaClient()

export  const createUserService = async (data:User):Promise<User> =>{
const result = await prisma.user.create({
    data
})
return result
}

export const updateProfileService = async (data:Profile):Promise<Profile> =>{

    const isExits = await prisma.profile.findUnique({
        where:{
            userId:data.userId
        }
    })
    if (isExits) {
        const result = await prisma.profile.update({
            where:{
                userId: data.userId
            },
            data:{
                bio:data.bio
            }
        })
        return result
    }
    const result = await prisma.profile.create({
        data
    })
    return result

}

export const getAllUserService = async ()=>{
    const result = await prisma.user.findMany({
        // select:{
        //     email:true
        // }
        include:{
            profile:true
        }
    })
    return result 
}
export const getSingleUserService = async (id:number)=>{
    const result = await prisma.user.findUnique({
      where:{
        id
      },
      include:{
        profile:true
      }
    })
    return result 
}