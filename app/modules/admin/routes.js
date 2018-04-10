var router = require('express').Router();

var authMiddleware = require('../auth/middlewares/auth');

router.use(authMiddleware.hasAuth);
router.use('/users', require('./users/routes'));

function admin(req,res){
    res.render('admin/users/views/index');
}
router.get('/', admin , authMiddleware.hasAuth);

exports.admin = router;