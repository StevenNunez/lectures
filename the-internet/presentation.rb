require 'slide_hero'

presentation 'the-internet' do
  grouped_slides do
    slide "" do
      point '<iframe width="560" height="315" src="https://www.youtube.com/embed/iDbyYGrswtg?rel=0" frameborder="0" allowfullscreen></iframe>'
    end
    slide "The internet is everywhere" do
      list do
        point "Boring", animation: true
        point "Amazing", animation: true
      end
      note "Ted Stevens, No one understands"
    end

    slide "The Internet" do
      remote_image "http://www.opte.org/wp-content/uploads/2014/04/about-img-2.png", as: :the_internet
      note "Protocols for communicating opte.org"
    end

    slide "October 29th, 1969" do
      point "UCLA <-> Stanford"
      remote_image "https://i.stack.imgur.com/LT6Tu.gif", as: :line
      note "DAPRA, Lo -> Crash"
    end

    slide "All the connections" do
      list do
        point "1971 15 Connected Sites", animation: true
        point "1980 All Universites", animation: true
      end
      note "Unix, sharing resources"
    end

    slide "The World" do
      list do
        point "Mid-80s - Europe Australia"
        list do
          point "Slow Slow Satelites"
        end
        point "Early 90s's - Asia"
      end
    end
    slide "Under(ground|water) Cables" do
      list do
        point "Transatlantic Cable 1858", animation: true
        point "Today: Fiber Optic Cables - Fast", animation: true
      end
      note "Lasted 3 weeks. Transatlantic Cable Internet"
    end

    slide "Fiber Optics" do
      list do
        point "The internet is under attack"
        point "<a href='http://mentalfloss.com/article/60150/10-facts-about-internets-undersea-cables'>Shark Attack</a>"
      end
    end
    slide "Back to History"
    slide "Commercialized in 1995" do
      list do
        point "1995: Amazon, eBay, Craigslist"
      end
    end
    slide "Today" do
      remote_image "https://cdn.shutterstock.com/shutterstock/videos/9595079/thumb/10.jpg", as: :percent
      point "<a href='http://www.internetlivestats.com/internet-users/'>40%</a>"
    end

    slide "Tim Berners-Lee" do
      list do
        point "Worked at CERN", animation: true
        point "Sent a memo outlining html an http 1989", animation: true
      end
      note "Boss -> Vague but interesting. Connect all the papers"
    end

    slide "World wide web" do
      point "Different from 'The Internet'", animation: true
    end
  end
  grouped_slides do
    slide "How does it work?"
    slide "Well..." do
      list do
        point "1. Put address in browser => Press Enter", animation: true
        point "2. Convert address to numerical address", animation: true
        point "3. Send request to numerical address asking for a webpage", animation: true
        point "4. Listen for response (Some String)", animation: true
        point "5. Browser Processes string and shows you the page", animation: true
      end
    end

    slide "1. Enter the Address"
    slide "2. Name -> Number" do
      list do
        point "Names mean nothing", animation: true
        point "IP Addresses are everything", animation: true
      end
    end

    slide "2. Name -> Number" do
      list do
        point "DNS (Domain Name System) - Lookup", animation: true
        point "Chicken and Egg", animation: true
      end
    end

    slide "3. Request to IP Address asking for a web page" do
      list do
        point "Asking for a Web Page == Asking for a Service"
        point "Find service by port (80 if asking for http)"
      end
    end

    slide "4 and 5. Responding and processing"
  end
end
