import transactionController from "../transaction/transactionController.js";

async function getAll(req, res) {
    try {
        const transactions = await transactionController.getAll(req.user.idUser);
        res.json(transactions);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: "Server error" });
    }
}

async function getByCategoryAndDate(req,res) {
    try {
        const idUser = req.user.idUser; // viene del token
        const { idCategory, dateInit, dateEnd } = req.body;
        const transaction = await transactionController.getByCategoryAndDate(idUser,idCategory,dateInit,dateEnd)
        res.json(transaction);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: "Server error2" });
    }
}



export {
    getAll,
    getByCategoryAndDate
}

export default {
    getAll,
    getByCategoryAndDate
};