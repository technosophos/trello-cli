const { events, Job } = require("brigadier");

events.on("exec", (e, p) => {
  trello = new Job("trello", "technosophos/trello-cli:latest")
  trello.env = {
    APIKEY: p.secrets.TRELLO_APIKEY,
    TOKEN: p.secrets.TRELLO_TOKEN
  }

  trello.tasks = [
    "env2creds",
    "trello refresh",
    "trello show-boards -i"
  ];

  trello.run().then( res => {
    console.log(res.toString());
  });

});
