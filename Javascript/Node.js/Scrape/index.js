const puppeteer = require('puppeteer');

async function scrapeProduct(url){
    const browser = await puppeteer.launch();
    const page = await browser.newPage();
    await page.goto(url);
  
    const [el] = await page.$x('/html/body/app-root/div/div[2]/servers/app-servers-detail/div[1]/ul/li[4]/span[2]');
    const txt = await el.getProperty('textContent');
    const rawTxt = await txt.jsonValue();
    var playerAmount = rawTxt.replace("/128", "");
  
    console.log(playerAmount);
  }
  setInterval(() => {
  scrapeProduct('https://servers.fivem.net/servers/detail/8kb7z5')
}, 15000);