import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

require("bootstrap")

require("../includes/vote.js")

Rails.start()
Turbolinks.start()
ActiveStorage.start()
