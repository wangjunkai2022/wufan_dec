package app.mgsim.arena;

import android.os.SystemClock;
import com.papa91.battle.protocol.RoomState;
import com.papa91.battle.protocol.SimpleRoom;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class SimpleWrapperRoom implements Serializable {
    public long initialStartTime;
    public SimpleRoom simpleRoom;

    public SimpleWrapperRoom() {
    }

    public static SimpleWrapperRoom cloneSimpleRoom(SimpleRoom simpleRoom) {
        SimpleWrapperRoom simpleWrapperRoom = new SimpleWrapperRoom(simpleRoom);
        if (simpleRoom.getState() == RoomState.START) {
            simpleWrapperRoom.initialStartTime = SystemClock.elapsedRealtime();
        }
        return simpleWrapperRoom;
    }

    public SimpleWrapperRoom(SimpleRoom simpleRoom) {
        this.simpleRoom = simpleRoom;
    }
}
