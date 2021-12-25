import { PaginateFunction } from "prisma-pagination";

declare module "express-serve-static-core" {
  export interface Request {
    paginate: PaginateFunction;
    id_user: number;
  }
}
