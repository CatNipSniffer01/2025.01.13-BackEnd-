const express = require("express")
const router = express.Router()
const backend = require("../Services/backend")

router.get("/", 
    async function(req, res, next){
        try{ res.json(await backend.getBooks()) }
        catch(err){ next(err) }
})

router.post("/", 
    async function(req, res, next){
        console.log("Post Body", req.body)
        try{ res.json(await backend.create(req.body)) }
        catch(err){ next(err) }
})

router.put("/:id", 
    async function(req, res, next){
        console.log("Post Body", req.body)
        try{ res.json(await backend.update(req.params.id,req.body)) }
        catch(err){ next(err) }
})
router.patch("/:id", 
    async function(req, res, next){
        console.log("Patch Body", req.body)
        try{ res.json(await backend.patch(req.params.id,req.body)) }
        catch(err){ next(err) }
})
router.delete("/:id", 
    async function(req, res, next){
        console.log("Post Body", req.body)
        try{ res.json(await backend.remove(req.params.id)) }
        catch(err){ next(err) }
})

module.exports=router