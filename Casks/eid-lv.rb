cask 'eid-lv' do
  version :latest
  sha256 :no_check

  url 'https://www.eparaksts.lv/files/ep3/eparakstitajs3-distribution.pkg'
  name 'eParakstītājs'
  name 'Electronic identity card software for Latvia'
  name 'eID Latvia'
  homepage 'https://www.eparaksts.lv'
  license :gratis

  pkg 'eparakstitajs3-distribution.pkg'

  uninstall :pkgutil => [
                         'com.gemalto.classicclient.pkg',
			 'lv.euso.signanywhere.pkg',
			 'org.latvia-eid.mac'
			]
end
