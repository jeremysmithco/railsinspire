import { application } from "./application"
import controllers from "./**/*_controller.js"

import NestedForm from "stimulus-rails-nested-form";
application.register("nested-form", NestedForm);

controllers.forEach((controller) => {
  application.register(controller.name, controller.module.default)
})
