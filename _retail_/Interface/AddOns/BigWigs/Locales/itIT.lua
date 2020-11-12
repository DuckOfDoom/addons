local L = BigWigsAPI:NewLocale("BigWigs", "itIT")
if not L then return end

--L.getNewRelease = "Your BigWigs is old (/bwv) but you can easily update it using the Twitch Client. Alternatively, you can update manually from curseforge.com or wowinterface.com."
--L.warnTwoReleases = "Your BigWigs is 2 releases out of date! Your version may have bugs, missing features, or completely incorrect timers. It is strongly recommended you update."
--L.warnSeveralReleases = "|cffff0000Your BigWigs is %d releases out of date!! We HIGHLY recommend you update to prevent syncing issues with other players!|r"

--L.gitHubDesc = "|cFF33FF99BigWigs is open source software hosted on GitHub. We are always looking for new people to help us out and everyone is welcome to inspect our code, make contributions and submit bug reports. BigWigs is as great as it is today largely in part to the great WoW community helping us out.|r"

--L.testNameplate = "Target detected, creating a test nameplate bar over target nameplate. |cFF33FF99This feature is rarely used, is usually just 1 bar, and is needed to keep track of cooldowns when fighting multiple bosses/ads that cast the same spell.|r"

--L.classicWarning1 = "|cFF33FF99BigWigs|r: You're using the wrong version of BigWigs on a classic server."
--L.classicWarning2 = "|cFF33FF99BigWigs|r: Please install the classic version of BigWigs."

--L.options = "Options"
--L.raidBosses = "Raid Bosses"
--L.dungeonBosses = "Dungeon Bosses"

--L.infobox = "Information Box"
--L.infobox_desc = "Display a box with information related to the encounter."
--L.INFOBOX = L.infobox
--L.INFOBOX_desc = L.infobox_desc

--L.disabledAddOn = "You have the |cFF436EEE%s|r addon disabled, timers will not be shown."
L.alternativeName = "%s (|cFF436EEE%s|r)"

L.activeBossModules = "Moduli dei Combattimenti Attivi:"
L.advanced = "Opzioni Avanzate"
L.alphaRelease = "Stai usando una VERSIONE ALPHA di BigWigs %s (%s)"
L.already_registered = "|cffff0000ATTENZIONE:|r |cff00ff00%s|r (|cffffff00%s|r) esiste già come modulo di BigWigs, ma qualcosa sta cercando di caricarlo di nuovo. Questo solitamente significa che hai due copie di questo modulo nella cartella addons a causa di qualche aggiornamento sbagliato. È consigliabile reinstallare BigWigs cancellando tutte le cartelle BigWigs."
L.altpower = "Visualizza potere alternativo"
L.ALTPOWER = "Visualizzazione potere alternativo"
L.altpower_desc = "Mostra la finestra del Potere Alternativo, che mostra l'ammontare di Potere Alternativo che ogni membro del gruppo ha."
L.ALTPOWER_desc = "Alcuni scontri usano la meccanica del potere alternativo sui membri del gruppo. La visualizzazione del potere alternativo mostra un breve riassunto su chi ha meno/più potere alternativo, che può essere utile per tattiche specifiche o per le assegnazioni."
L.back = "<< Indietro"
L.BAR = "Barre"
L.BAR_desc = "Le Barre vengono visualizzate al momento giusto in alcuni combattimenti. Se questa abilità è accompagnata da una barra che tu preferisci nascondere, disabilita questa opzione."
L.berserk = "Infuriato"
L.berserk_desc = "Visualizza un timer e un avviso quando il boss si infurierà."
L.best = "Migliore:"
L.chatMessages = "Messaggi Riquadro Chat"
L.chatMessagesDesc = "Invia tutti i messaggi di BigWigs alla chat oltre che nei settaggi di visualizzazione."
L.colors = "Colori"
L.configure = "Configura"
L.COUNTDOWN = "Conto alla rovescia"
L.COUNTDOWN_desc = "Se abilitato, un conto alla rovescia vocasle e visuale verrà aggiunto per gli ultimi 5 secondi. Immagina qualcuno che esegue un conto alla rovescia \"5... 4... 3... 2... 1...\" con numeri grandi proprio nel centro dello schermo."
L.dbmFaker = "Fingi di usare DBM"
L.dbmFakerDesc = "Se un'utente DBM effettua un controllo di versione per vedere chi usa DBM, ti vedranno nella lista. Utile per quelle gilde che obbligano ad usare DBM."
L.dbmUsers = "Utilizzatori DBM:"
L.DISPEL = "Solo Dissolutori"
L.DISPEL_desc = "Se vuoi vedere gli avvisi per questa abilità, anche se non puoi dissiparla, disabilita questa opzione."
L.dispeller = "|cFFFF0000Messaggio solo per Dissolutori Magici.|r "
L.EMPHASIZE = "Enfatizza"
L.EMPHASIZE_desc = "Abilitando questa opzione verrà enfatizzato qualsiasi messaggio associato con questa abilità. rendendoli più grandi e visibili. Puoi impostare la dimensione e il carattere dei messaggi enfatizzati nelle opzioni principali alla voce \"Messaggi\"."
L.FLASH = "Lampeggio"
L.FLASH_desc = "Alcune abilità sono più importanti di altre. Se vuoi che lo schermo lampeggi quando questa abilità sta per essere lanciata o è usata, seleziona questa opzione."
L.flashScreen = "Lampeggia Schermo"
L.flashScreenDesc = "Alcune abilità sono così importanti che richiedono la tua completa attenzione. Quando sei il bersaglio diretto di queste abilità BigWigs può far lampeggiare lo schermo."
L.healer = "|cFFFF0000Messaggio solo per Guaritori.|r "
L.HEALER = "Solo Guaritori"
L.HEALER_desc = "Alcune abilità sono rilevanti solo per i Guaritori. Se vuoi vedere questi avvertimenti anche se non è il tuo ruolo, disabilita questa opzione."
L.heroic = "Eroica"
L.ICON = "Icona"
L.ICON_desc = "BigWigs può evidenziare i giocatori affetti da alcune abilità con un simbolo. Questo rende più facile vederli."
L.introduction = "Benvenuto in BigWigs, dove imposti i combattimenti dei boss. Allacciati le cinture, Prendi le patatine e goditi il viaggio. Non mangia i tuoi bambini, ma ti aiuta a preparare i nuovi boss in modo completo per le tue incursioni."
L.kills = "Uccisioni:"
L.lfr = "RDI"
L.listAbilities = "Elenca le Abilità nella Chat"
L.ME_ONLY = "Solo quando su di me"
L.ME_ONLY_desc = "Quando abiliti questa opzione i messaggi per questa abilità verranno mostrati solo quando affliggono te stesso e non gli altri. Per esempio, 'Bomba: Giocatore' verrà mostrato solo se è su di te."
L.MESSAGE = "Messaggi"
L.MESSAGE_desc = "Molte abilità dei boss hanno uno o più messaggi di BigWigs sullo schermo. Se disabiliti questa opzione, nessun messaggio allegato a quest'opzione verrà visualizzato."
L.minimapIcon = "Icona MiniMappa"
L.minimapToggle = "Visualizza/Nasconde l'icona di BigWigs nella minimappa."
L.missingAddOn = "Per favore, prendi nota che questa zona richiede il plugin |cFF436EEE%s|r per fare in modo di visualizzare barre e timers."
L.mythic = "Mitica"
L.noBossMod = "Nessun Boss mod:"
L.normal = "Normale"
L.officialRelease = "Stai usando una versione ufficiale di BigWigs %s (%s)"
L.offline = "Disconnesso"
L.oldVersionsInGroup = "Hai giocatori nel tuo gruppo con versioni obsolete oppure senza BigWigs. Puoi avere maggiori dettagli scrivendo /bwv."
L.outOfDate = "Obsoleti:"
L.PROXIMITY = "Monitor di Prossimità"
L.PROXIMITY_desc = "A volte le abilità richiedono che si stia lontani. Il Monitor di prossimità è nato per questa necessità e ti mette in condizione di capire quando sei al sicuro."
L.PULSE = "Pulsazione"
L.PULSE_desc = "In aggiunta al Lampeggio sullo schermo, puoi avere anche un'icona relativa a questa specifica abilità piazzata momentaneamente al centro dello schermo per aiutarti a focalizzare la tua attenzione."
L.removeAddon = "Per favore rimuovi '|cFF436EEE%s|r' perché è stato rimpiazzato da '|cFF436EEE%s|r'."
L.resetPositions = "Ripristina le Posizioni"
L.SAY = "Parla"
L.SAY_desc = "I messaggi sul canale 'Parla' sono facili da identificare grazie ai fumetti che creano. BigWigs userà un mesaggio sul canale 'Parla' per avvisare chi sta vicino a te."
L.selectEncounter = "Seleziona il Combattimento"
L.slashDescBreak = "|cFFFED000/break:|r Invia un timer di pausa a tutta la tua incursione."
L.slashDescConfig = "|cFFFED000/bw:|r Apri la configurazione di BigWigs."
L.slashDescLocalBar = "|cFFFED000/localbar:|r Crea una barra personale solo per te stesso."
L.slashDescPull = "|cFFFED000/pull:|r Invia un conto alla rovescia per l'ingaggio alla tua incursione."
L.slashDescRaidBar = "|cFFFED000/raidbar:|r Invia una barra personalizzata alla tua Incursione."
L.slashDescRange = "|cFFFED000/range:|r Apri l'indicatore di porossimità."
L.slashDescTitle = "|cFFFED000Comandi Slash:|r"
L.slashDescVersion = "|cFFFED000/bwv:|r Esegui un controllo di versione di BigWigs."
L.sound = "Suoni"
L.sourceCheckout = "Stai usando una versione di BigWigs %s presa direttamente dal repository."
L.stages = "Fasi"
L.stages_desc = "Abilita funzioni relative alle varie fasi del boss come la prossimità, le barre, ecc."
L.statistics = "Statistiche"
L.tank = "|cFFFF0000Messaggio solo per Difensori.|r "
L.TANK = "Solo Difensori"
L.TANK_desc = "Alcune abilità sono rilevanti solo per i Difensori. Se vuoi vedere questi avvertimenti anche se non è il tuo ruolo, disabilita questa opzione."
L.tankhealer = "|cFFFF0000Messaggio per Difensori e Guaritori.|r "
L.TANK_HEALER = "Solo Difensori e Guaritori"
L.TANK_HEALER_desc = "Alcune abilità sono rilevanti solo per i Difensori e i Guaritori. Se vuoi vedere questi avvertimenti anche se non è il tuo ruolo, disabilita questa opzione."
L.test = "Prova"
L.testBarsBtn = "Crea Barra Test"
L.testBarsBtn_desc = "Crea una barra test per provare le tue impostazioni attuali."
L.toggleAnchorsBtn = "Attiva o disattiva gli Ancoraggi"
L.toggleAnchorsBtn_desc = "Attiva o disattiva la visualizzazione dei punti di ancoraggio."
L.tooltipHint = "|cffeda55fClic-Destro|r per aprire le Opzioni."
L.upToDate = "Aggiornati:"
L.VOICE = "Voce"
L.VOICE_desc = "Se hai un plugin vocale installato, questa opzione lo indurrà a riprodurre un file sonoro per annunciarti l'avvertimento."
L.warmup = "Pre-ingaggio"
L.warmup_desc = "Conto alla rovescia per l'inizio del combattimento con il boss."
L.wipes = "Fallimenti:"
L.zoneMessages = "Mostra messaggi di zona"
L.zoneMessagesDesc = "Disabilitando questa opzione BigWigs non mostrerà più i messaggi per avvisare che esistono moduli con timer/barre ecc. disponibili ma che tu non hai installato. Raccomandiamo di lasciare attiva questa opzione perché è una notifica che vedrai solo quando verranno creati timer e quant'altro per una nuova zona che potresti trovare utile."

--L.SOUND = "Sound"
--L.SOUND_desc = "Boss abilities usually play sounds to help you notice them. If you disable this option, none of the sounds attached to it will play."
--L.CASTBAR = "Cast Bars"
--L.CASTBAR_desc = "Cast bars are sometimes shown on certain bosses, usually to bring attention to a critical ability incoming. If this ability is accompanied by a cast bar that you want to hide, disable this option."
--L.SAY_COUNTDOWN = "Say Countdown"
--L.SAY_COUNTDOWN_desc = "Chat bubbles are easy to spot. BigWigs will use multiple say messages counting down to alert people nearby that an ability on you is about to expire."
--L.ME_ONLY_EMPHASIZE = "Emphasize (me only)"
--L.ME_ONLY_EMPHASIZE_desc = "Enabling this will emphasize any messages associated with this ability ONLY if it is casted on you, making them larger and more visible."
-- L.NAMEPLATEBAR = "Nameplate Bars"
-- L.NAMEPLATEBAR_desc = "Bars are sometimes attached to nameplates when more than one mob casts the same spell. If this ability is accompanied by a nameplate bar that you want to hide, disable this option."

-- Media.lua
L.Beware = "Attenti! (Algalon)"
L.FlagTaken = "Cattura Bandiera (PvP)"
L.Destruction = "Distruzione (Kil'jaeden)"
L.RunAway = "Scappa ragazzina, scappa!!! (Big Bad Wolf)"
