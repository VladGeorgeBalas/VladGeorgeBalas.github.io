# MySt

## Ce si de ce?
Am facut acest proiect cu intentia de a aduga tool-ului tot ce este necesar pentru mai multe tipuri de proiecte. In cadrul lui se gasesc mai multe repo-uri:
- Un fork de myst
- Un scheduler local de modificari

Problemele pe care le-am intampinat cu MySt se datoreaza tooling-ului redus si al ecosistemului relativ nou. Prin urmare am decis sa fac un [fork local](https://github.com/VladGeorgeBalas/mystmd) si un scheduler pentru MySt care sa completeze golurile pe care le-am gasit eu. Acestea intre in 3 categorii:
- Estetice - vorbim despre lipsa de integrare a unor lucruri care ar fi utile si frumoase, dar nu avem vreun mod de a le genera sau a le integra. Aici intra:
  - [ ] Acceptarea de fisiere sursa *.html. Exista pagini statice foarte frumoase pe internet dar nu le putem include cumva frumos si direct in site-urile noastre
  myst deoarece nu accepta astfel de fisiere. Aceasta modificare este una din cele mai mari.
  - [ ] Widget-uri pentru diferite site-uri cunoscute: GitHub, Stackoverflow, etc. Lipsa acestora se simte mai ales in cadrul paginilor unde am vrea sa rezumam
  mai multe surse intr-o singura pagina.
- Functionale - este vorba despre utilitati reale de care programul duce lipsa
  - [ ] Expansiunea formatelor de fisiere de configurare. Este vorba despre TOML in opinia mea, YAML fiind destul de greu de interpretat programatic in multe
  limbaje. Una din tintele mele este sa introduc configurarea prin TOML in locul celei prin YAML
  - [ ] Widget de index. Aici am simtit cel mai mult nevoia cand incercam sa trimit spre download fisiere alaturi de pagini dedicate studiului. Daca voiam sa
  prezint un repo, as fi vrut sa am si un index frumos cu fisierele pentru exemple.
- Para-myst - Schedulere, interfete grafice de administrare, etc. Orice este dedicat unei utilizari specifice a site-ului
  - [ ] Scheduler de modificari, scris in nim. ( cel mai probabil o sa aduga un link mai tarziu)
