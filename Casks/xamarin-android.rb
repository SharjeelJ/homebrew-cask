cask 'xamarin-android' do
  version '9.3.0-22'
  sha256 '790dd55032581532a70d0d419e44b7dea02c0f3c543b8cadacd1ae64b8d2ef25'

  url "https://dl.xamarin.com/MonoforAndroid/Mac/xamarin.android-#{version}.pkg"
  appcast 'https://xampubdl.blob.core.windows.net/static/installer_assets/v4/Mac/Universal/InstallationManifest.xml'
  name 'Xamarin.Android'
  homepage 'https://www.xamarin.com/platform'

  pkg "xamarin.android-#{version}.pkg"

  uninstall pkgutil: 'com.xamarin.android.pkg'

  zap trash: [
               '/Developer/MonoAndroid',
               '/Library/Frameworks/Xamarin.Android.framework',
               '~/Library/Caches/Xamarin.Android',
               '~/Library/Caches/XamarinBuildDownload',
             ]
end
