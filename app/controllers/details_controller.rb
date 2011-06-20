# coding: utf-8
class DetailsController < ApplicationController
  def speakers
    @speakers = [
        {
            :name=>"Pamela Fox",
            :twitter=>"pamelafox",
            :bio=>"San Fran based web app guru
        Worked on the Google Maps API & Wave projects",
            :image=>"pamela_fox"
        },
        {
            :name=>"Jeff Wegesin",
            :twitter=>"jefweg",
            :bio=>"Wellington based, USA born CSS Master
        Likes to peek at your HTML",
            :image=>"jef_weg"
        },
        {
            :name=>"Paul Irish",
            :twitter=>"paul_irish",
            :bio=>"Chrome developer relations guy
        Responsible for Modernizr & HTM5 Boilerplate",
            :image=>"paul_irish"
        },
        {
            :name=>"Michael Koziarski",
            :twitter=>"nzkoz",
            :bio=>"Founder of Southgate Labs
        Rails core team member",
            :image=>"michael_koziarski"
        },
        {
            :name=>"John Clegg",
            :twitter=>"johnclegg",
            :bio=>"Founder of ProjectX
        Web enterpreneur & technologist",
            :image=>"john_clegg"
        },
        {
            :name=>"Kirk Jackson",
            :twitter=>"kirkj",
            :bio=>"Web security pro with Aura Software Security
        Software security MVP",
            :image=>"kirk_jackson"
        },
        {
            :name=>"Robert Coup",
            :twitter=>"amatix",
            :bio=>"Founder of Koordinates
          Map geek, Python guy",
            :image=>"robert_coup"
        },
        {
            :name=>"James Pearce",
            :twitter=>"jamespearce",
            :bio=>"Sencha developer relations
            Mobile web apps are his thing",
            :image=>"james_pearce"
        },
        {
            :name=>"Jeremy Boyd",
            :twitter=>"turtlespin",
            :bio=>"Founder of Mindscape
            Microsoft Regional Director",
            :image=>"jeremy_boyd"
        },
        {
            :name=>"Layton Duncan",
            :twitter=>"polarbearfarm",
            :bio=>"Founder of Polar Bear Farm
            The very first iPhone development company",
            :image=>"layton_duncan"
        },
        {
            :name=>"Karl von Randow",
            :twitter=>"avon",
            :bio=>"Founder of Cactus Labs, iPhone developer
            Created Camera+ and Birdbrain amongst others",
            :image=>"karl_von_randow"
        },
        {
            :name=>"Sam Minnée",
            :twitter=>"sminnee",
            :bio=>"Founder & CEO at Silverstripe
            PHP guru",
            :image=>"sam_minnee"
        },
        {
            :name=>"Leon Bambrick",
            :twitter=>"secretGeek",
            :bio=>"Creator of TimeSnapper & Nimble Text
            Consultant at Microsoft's SDC in Brisbane",
            :image=>"leon_bambrick"
        },

        {
            :name=>"Craig Walker",
            :twitter=>"storminwalker",
            :bio=>"CTO of Xero
        JavaScript lights his fire",
            :image=>"craig_walker"
        },
        {
            :name=>"Nigel Parker",
            :twitter=>"nzigel",
            :bio=>"Web & mobile evangelist at Microsoft NZ
        Motivated by big ideas & unconventional execution",
            :image=>"nigel_parker"
        },
        {
            :name=>"Chris Double",
            :twitter=>"doublec",
            :bio=>"Auckland based Mozilla Developer
        Works on HTML 5 video & audio Firefox suport",
            :image=>"chris_double"
        }
    ]
    @title = "WDCNZ - Speaker Details"
  end

  def venue
    @title = "WDCNZ - Venue & Stuff"
  end

  def programme
    @title = "WDCNZ - Programme"
    @programme = [{
                      :time=>'8.00AM',
                      :sessions=>[{
                                      :type=>:info,
                                      :name=>'Registration'
                                  }]}, {
        :time=>'9.00AM',
        :sessions=>[{
                        :type=>:info,
                        :name=>'Opening'
                    }]}, {
        :time=>'9.15AM',
        :sessions=>[{
                        :type=>:talk,
                        :speaker=>'Pamela Fox',
                        :name=>'Why APIs Matter',
                        :room=>'Te Aro'
                    }]
    }, {
        :time=>'10.00AM',
        :sessions=>[{
                        :type=>:talk,
                        :speaker=>'Jeffery Wegesin',
                        :name=>'Preparation H',
                        :room=>'Te Aro'
                    },
                    {
                        :type=>:talk,
                        :speaker=>'Sam Minnée',
                        :name=>'Building Web Apps in SilverStripe 3',
                        :room=>'Waterfront'
                    }]
    },{
        :time=>'10.45AM',
        :sessions=>[{
                        :type=>:info,
                        :name=>'Break'
                    }]
    },{
        :time=>'11.15AM',
        :sessions=>[{
                        :type=>:talk,
                        :speaker=>'Michael Koziarski',
                        :name=>'How Rails Won the Framework Wars',
                        :room=>'Te Aro'
                    },
                    {
                        :type=>:talk,
                        :speaker=>'Jeremy Boyd',
                        :name=>'WebSockets.open()',
                        :room=>'Waterfront'
                    }]
    },{
        :time=>'12.00PM',
        :sessions=>[{
                        :type=>:panel,
                        :sub=>'Web vs Native, featuring Duncan, Randow, Pearce & Parker',
                        :name=>'The Mobile Panel',
                        :room=>'Te Aro'
                    }]
    },{
        :time=>'12.45PM',
        :sessions=>[{
                        :type=>:info,
                        :name=>'Lunch',
                    }]
    },{
        :time=>'1.30PM',
        :sessions=>[{
                        :type=>:talk,
                        :speaker=>'Paul Irish',
                        :name=>'HTML5 for Humans',
                        :room=>'Te Aro'
                    }]
    },{
        :time=>'2.15PM',
        :sessions=>[{
                        :type=>:talk,
                        :speaker=>'Nigel Parker & Chris Double',
                        :name=>'HTML Media: Where we are & Where we need to go',
                        :room=>'Te Aro'
                    },
                    {
                        :type=>:talk,
                        :speaker=>'Leon Bambrick',
                        :name=>'Live Coding ASP.NET MVC3',
                        :room=>'Waterfront'
                    }]
    }, {
        :time=>'3.00PM',
        :sessions=>[{
                        :type=>:talk,
                        :speaker=>'Kirk Jackson',
                        :name=>'Web Security - Get ahead(er)',
                        :room=>'Te Aro'
                    },
                    {
                        :type=>:talk,
                        :speaker=>'John Clegg',
                        :name=>'The Forgotten Art of Web Performance',
                        :room=>'Waterfront'
                    }]
    }, {
        :time=>'3.30PM',
        :sessions=>[{
                        :type=>:info,
                        :name=>'Break'
                    }]
    }, {
        :time=>'4.00PM',
        :sessions=>[{
                        :type=>:talk,
                        :speaker=>'Craig Walker',
                        :name=>'Apocalypse Node',
                        :room=>'Te Aro'
                    },
                    {
                        :type=>:talk,
                        :speaker=>'Robert Coup',
                        :name=>'I Want A Pony',
                        :room=>'Waterfront'
                    }]
    }, {
        :time=>'4.45PM',
        :sessions=>[{
                        :type=>:talk,
                        :speaker=>'James Pearce',
                        :name=>'HTML5, CSS3, Javascript: an evolving web & new ways to reach mobile users',
                        :room=>'Te Aro'
                    }]
    },{
        :time=>'5.30PM',
        :sessions=>[{
                        :type=>:info,
                        :name=>'Closing',
                    }]
    },{
        :time=>'5.45PM',
        :sessions=>[{
                        :type=>:info,
                        :name=>'Xero After Party'
                    }]
    }


    ]
  end
end
