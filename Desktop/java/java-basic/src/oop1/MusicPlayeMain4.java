package oop1;

public class MusicPlayeMain4 {

    public static void main(String[] args) {
        MusicPlayer player = new MusicPlayer();

        //음악 플레이어 켜기
        player.on();
        //볼륨 증가
        player.volumUp();
        //볼륨 증가
        player.volumUp();
        //볼륨 감소
        player.volumDown();
        //음악 플레이어 상태
        player.showStatus();
        //음악 플레이어 종료
        player.off();
    }
}
