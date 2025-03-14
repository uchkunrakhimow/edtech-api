import { Router } from 'express';
import verifyMiddleware from '@middlewares/verify.middleware';
import userRoute from '@modules/user/user.controller';
import courseRoute from '@modules/course/course.controller';
import authRoute from '@modules/auth/auth.controller';

const router = Router();

const apiRoutes = [userRoute, courseRoute];
apiRoutes.forEach((route) => router.use('/api', verifyMiddleware, route));

router.use('/auth', authRoute);

export default router;
