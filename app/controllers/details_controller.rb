# coding: utf-8
class DetailsController < ApplicationController
  def speakers
    @speakers = [
      {
        :name=>"Pamela Fox",
        :twitter=>"pamelafox",
        :bio=>"San Fran based web app guru
        Pam worked on the Maps API & Google Wave project",
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
        Responsible for Modernizr and HTM5 Boilerplate",
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
        Web enterpreneur and technologist",
        :image=>"john_clegg"
      },
      {
        :name=>"Kirk Jackson",
        :twitter=>"kirkj",
        :bio=>"Web security professional with Aura Software Security
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
            :bio=>"Founder of Polarbear farm
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
            :bio=>"Founder and CTO at Silverstripe
            PHP guru",
            :image=>"sam_minnee"
          },
          {
            :name=>"Leon Bambrick",
            :twitter=>"secretGeek",
            :bio=>"Creator of TimeSnapper and Nimble Text
            Consultant at Microsoft's SDC in Brisbane",
            :image=>"leon_bambrick"
          },
      {
        :name=>"Craig Walker",
        :twitter=>"storminwalker",
        :bio=>"CTO of Xero
        JavaScript lights his fire",
        :image=>"craig_walker"
      }
      ]
      @title = "WDCNZ - Speaker Details"
  end

  def venue
    @title = "WDCNZ - Venue & Stuff"
  end

end
