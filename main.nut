class MainClass extends GSController {}

function MainClass::Start() {
  GSController.Sleep(1);

  while (true) {
    if (GSGameSettings.GetValue("gui.ai_developer_tools")) {
      GSController.Break("Continue script to export signs csv");
      GSLog.Info("x,y,owner,text");
      for (local c = GSCompany.COMPANY_FIRST; c <= 18; c += 1) {
        local cm = GSCompanyMode(c);

        local sign_list = GSSignList();
        sign_list.Valuate(GSSign.GetOwner);
        sign_list.KeepValue(c);

        foreach (id, _ in sign_list) {
          local location = GSSign.GetLocation(id);
          local owner = GSSign.GetOwner(id);
          local text = GSSign.GetName(id);
          GSLog.Info(GSMap.GetTileX(location) + "," + GSMap.GetTileY(location) + "," + owner + "," + text);
        }
      }
    }
    GSController.Sleep(100);
  }
}

