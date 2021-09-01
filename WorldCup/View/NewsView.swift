//
//  UserTopView.swift
//  tester
//
//  Created by Luis Gonzalez on 8/30/21.
//

import UIKit

class NewsView: ProgammaticView {

    let news = UITextView()
    let newsImage = UIImageView()
    let title = UILabel()
    let alerts = UISwitch()
    
    override func configure() {
        newsImage.image = UIImage(named: "worldCupNews")
        newsImage.contentMode = .scaleToFill
        newsImage.layer.borderWidth = 2
        newsImage.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
        
        news.isEditable = false
        news.text = "\tklwajfeiawjf sdkjdf asj fglsaj fljaoiethga ehgf sf saj fihjaew;oig aeihf saeki;hf iasej fiaesj filasej fhsa fdsajdslk;jfksalfjkdlsafj lasjef aweihfg iawehtfiuwearyf iesahg kadbfg aesfh iaewhf iaweohf iawehgfi aeuh fiawe fiaeh iogfhaeig uash fuahsf iahe sifh aseiohf uaesh fuawehiugf asefb.\n\n eijior;afj al;isjf sdjf kasdjf lsajd flawje ifhawiuret aiwjehr ;qwaoiheirpq eh gis fhiaeh fihewa ir oah fgieh sfgha egfqew apirahw fh lkdsjb gvkashef h;eas fhsdha fuhads hdsu.\n\n jsakld fjadslijf alkeshf kaehsfk adhskf hdksajf ikladsj fkhagwelurgf uesahf kjsahdfk hsad kfhiuweg4rt iewauhgf bdsfjkvasl dhf aksehf iuehw ifhe asfuhe iusaehfg kersbdvg iaush reiqwhf dsh fkah sdkfh iuwaegfitu gewuirf giuwq."
        //news.numberOfLines = 0
        news.font = UIFont(name: "GeezaPro-Bold", size: 16)
        news.textColor = .black
    }
    
    override func constrain() {
        addConstrainedSubviews(newsImage, news)
        
        NSLayoutConstraint.activate([
            newsImage.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            newsImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            newsImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            newsImage.heightAnchor.constraint(equalToConstant: 200),
            
            news.topAnchor.constraint(equalTo: newsImage.bottomAnchor, constant: 10),
            news.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            news.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            news.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80)
        ])
    }
    
}
