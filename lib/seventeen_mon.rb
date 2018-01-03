# coding: utf-8

module SeventeenMon
  require "socket"
  require "ipaddr"
  require "seventeen_mon/version"
  require "seventeen_mon/ipdb"
  require "seventeen_mon/ip"

  def self.data_path=(path)
    IPDB.instance.ip_db_path(path)
  end

  def self.find_by_ip(_ip)
    IP.new(ip: _ip).find
  end

  def self.find_by_address(_address)
    prot, addr = _address.split("://")
    IP.new(address: addr, protocol: prot).find
  end
end

SM = SeventeenMon
