import flowbiteContent from "../builds/flowbite.turbo" with { type: "text" }
import flowbiteDatepicker from "../builds/flowbite-datepicker" with { type: "text" }

export const plugin = require("flowbite/plugin");
export const interactiveContent = { raw: `${flowbiteContent} ${flowbiteDatepicker}`, extenstion: "js" }
