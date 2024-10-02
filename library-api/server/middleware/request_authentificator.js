export default async(req, res, next) => {

    if (req.session) {
        return next()
    } else {
        next(createAuthorizationError())
    }
}

export function createAuthorizationError() {
    const err = new Error('Not Authorized')
    err.status = 401 // Set status to 403 Forbidden (actually means unauthorized)
    return err
}