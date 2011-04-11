# coding: utf-8
class DetailsController < ApplicationController
  def speakers
    @speakers = [
      {
        :name=>"Pamela Fox",
        :twitter=>"pamelafox",
        :bio=>"Pamela Fox has what can only accurately be called an addiction to APIs. As a computer science student at USC, she won mashup contests with her use of the Gadgets API, Rhapsody API, GeoCommons API, Proto API, and more. As a developer advocate at Google, she spent her time supporting developers of the Google Maps and Wave APIs and she wrote the “Developer Support Handbook” based on what she learnt during those years.
        
        Pamela is now a free-range developer, working on her own projects from the comfort of her SF apartment, and she still loves to use APIs and think about what it means to create a great API and healthy API ecosystem.
        ",
        :image=>"pamela_fox"
      },
      {
        :name=>"Jeff Wegesin",
        :twitter=>"jefweg",
        :bio=>"Wellington based, US born, CSS master
        Jeff is up to his neck in the Xero web app.",
        :image=>"jef_weg"
      },
      {
        :name=>"Paul Irish",
        :twitter=>"paul_irish",
        :bio=>"Paul Irish is a front-end developer who loves the web. He is on Google Chrome's Developer Relations team as well as a jQuery team member.
        
        He develops the HTML5 Boilerplate, the HTML5/CSS3 feature detection library Modernizr, CSS3 Please, and other bits and bobs of open source code",
        :image=>"paul_irish"
      },
      {
        :name=>"Michael Koziarski",
        :twitter=>"nzkoz",
        :bio=>"Michael \"Koz\" Koziarski is a software developer and consultant who specialises in Ruby on Rails, database architecture, web businesses and object oriented design.
        Following a successful stint as an enterprise Java developer, Koz became a contributor to Rails in 2004 and has been a Rails core team member since 2005",
        :image=>"michael_koziarski"
      },
      {
        :name=>"John Clegg",
        :twitter=>"johnclegg",
        :bio=>"Wellington based web entrepreneur and technologist",
        :image=>"john_clegg"
      },
      {
        :name=>"Kirk Jackson",
        :twitter=>"kirkj",
        :bio=>"Kirk Jackson is a Security Consultant at Aura Software Security. He has spent his career developing server and web client solutions for small businesses, corporate and government customers.",
        :image=>"kirk_jackson"
      },
        {
          :name=>"Robert Coup",
          :twitter=>"amatix",
          :bio=>"Python/Map geek, founded Koordinates where he serves as CTO",
          :image=>"robert_coup"
        },
          {
            :name=>"James Pearce",
            :twitter=>"jamespearce",
            :bio=>"James Pearce heads developer relations at Sencha. He is a technologist, writer, developer & entrepreneur, who has been working with the mobile web for over a decade. Most recently he was the CTO at dotMobi and has a background in mobile startups, telecoms infrastructure and management consultancy. James is the creator of tinySrc, WhitherApps, MetaJam and the WordPress Mobile Pack.",
            :image=>"james_pearce"
          },
          {
            :name=>"Jeremy Boyd",
            :twitter=>"turtlespin",
            :bio=>"Jeremy (JB) is a co-founder of Mindscape, a Wellington based software product company and spends most of his day coding awesome tools for .NET developers.
            He has also been involved in the local Microsoft developer community for the past 7 years in his role as a Microsoft Regional Director. JB has a strong background and passion for web development. His main interests currently lie with jQuery, ASP.NET MVC, Node.js and exploring the possibilities with HTML5, in particular with WebSockets.",
            :image=>"jeremy_boyd"
          },
          {
            :name=>"Layton Duncan",
            :twitter=>"polarbearfarm",
            :bio=>"Layton founded the world's first commercial iPhone development company, Polar Bear Farm, in 2007. Polar Bear Farm create utility applications for the iPhone, among them, the first search tools, and the very first video recording application for the original iPhone. More recently Layton co-founded Sense Medical, a company tackling the challenge of bringing health systems into the mobile age, using the iOS platform to enable real time information recording and sharing within hospitals.",
            :image=>"layton_duncan"
          },
          {
            :name=>"Karl von Randow",
            :twitter=>"avon",
            :bio=>"Karl is the co-founder of award winning web and iPhone studio Cactuslab and developer of popular iPhone application Camera+. On the web; Cactuslab is a staunch advocate of web standards, and builds sites to the HTML 5 specification. On iOS; Karl and Cactuslab have been hard at work since the launch of the iPhone 3G. They usually prefer to keep their web and native separate, but perhaps there's now scope to blur those lines.",
            :image=>"karl_von_randow"
          },
          {
            :name=>"Sam Minnée",
            :twitter=>"sminnee",
            :bio=>"Sam Minnée, Chief Technology Officer and co-founder of SilverStripe, is a widely respected systems architect and was an early advocate of non-obtrusive JavaScript techniques in the web community.",
            :image=>"sam_minnée"
          },
      
      ]
      @title = "WDCNZ - Speaker Details"
  end

  def venue
    @title = "WDCNZ - Venue & Stuff"
  end

end
