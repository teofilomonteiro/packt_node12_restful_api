// all errors caught by async wrapper and set to error handler
// no need for try catch
export const AsyncWrapper = func => (req, res, next) => 
    func(req, res).catch(next);