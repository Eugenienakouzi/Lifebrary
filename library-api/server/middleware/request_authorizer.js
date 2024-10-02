export function createAuthorizer(role){
    return async (req, res, next) => {
        if (req.session){
            const user = req.session.user
            if (user.role === role){
                return next()
            }else{
                next(createAuthorizationRoleError())
            }
        }else{
            next(createAuthorizationError())
        }
    } 
}

export function createAuthorizationRoleError() {
    const err = new Error('Forbidden')
    err.status = 403 // Set status to 403 Forbidden (actually means unauthorized)
    return err
}

export function createAuthorizationError() {
    const err = new Error('Not Authorized')
    err.status = 401 // Set status to 403 Forbidden (actually means unauthorized)
    return err
}

export default createAuthorizer