require 'puppet/face'

Puppet::Face.define(:help, '0.0.1') do
  action :easter do
    summary "help help help help help"
    arguments _("[<subcommand>] [<action>]")

    description <<-'EOT'
      Today is the first day of the rest of your life.
    EOT

    when_invoked do |*args|
      if args.include? 'egg'
        c = "\n %'(),-./=ADEFHILORSTUXY\\_`gnv|".split('')
        i = <<-'EOT'.gsub(/\s*/, '').to_i(36)
          3he6737w1aghshs6nwrivl8mz5mu9nywg9tbtlt081uv6fq5kvxse1td3tj1wvccmte806nb
          cy6de2ogw0fqjymbfwi6a304vd56vlq71atwmqsvz3gpu0hj42200otlycweufh0hylu79t3
          gmrijm6pgn26ic575qkexyuoncbujv0vcscgzh5us2swklsp5cqnuanlrbnget7rt3956kam
          j8adhdrzqqt9bor0cv2fqgkloref0ygk3dekiwfj1zxrt13moyhn217yy6w4shwyywik7w0l
          xtuevmh0m7xp6eoswin70khm5nrggkui6z8vdjnrgdqeojq40fya5qexk97g4d8qgw0hvokr
          pli1biaz503grqf2ycy0ppkhz1hwhl6ifbpet7xd6jjepq4oe0ofl575lxdzjeg25217zyl4
          nokn6tj5pq7gcdsjre75rqylydh7iia7s3yrko4f5ud9v8hdtqhu60stcitirvfj6zphppmx
          7wfm7i9641d00bhs44n6vh6qvx39pg3urifgr6ihx3e0j1ychzypunyou7iplevitkyg6gbg
          wm08oy1rvogcjakkqc1f7y1awdfvlb4ego8wrtgu9vzw4vmj59utwifn2ejcs569dh1oaavi
          sc581n7jjg1dugzdu094fdobtx6rsvk3sfctvqnr36xctold
        EOT
        353.times{i,x=i.divmod(1184);a,b=x.divmod(37);print(c[a]*b)}
      end
      raise ArgumentError, _("The 'puppet help' command takes two (optional) arguments: a subcommand and an action")
    end
  end

end
