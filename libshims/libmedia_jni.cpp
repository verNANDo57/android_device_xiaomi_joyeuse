#include <string>

const std::string mOpPackageName = "";

// New constructor prototype of MediaPlayer::MediaPlayer(const std::string opPackageName)
extern "C" void _ZN7android11MediaPlayerC1ENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(const std::string opPackageName);

// Old constructors
extern "C" void _ZN7android11MediaPlayerC1Ev() {
    return _ZN7android11MediaPlayerC1ENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(mOpPackageName);
}

extern "C" void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_ ()  {
		// Required empty constructor
}