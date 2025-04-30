package androidx.constraintlayout.motion.widget;
/* loaded from: classes.dex */
public class OnSwipe {
    public static final int COMPLETE_MODE_CONTINUOUS_VELOCITY = 0;
    public static final int COMPLETE_MODE_SPRING = 1;
    public static final int DRAG_ANTICLOCKWISE = 7;
    public static final int DRAG_CLOCKWISE = 6;
    public static final int DRAG_DOWN = 1;
    public static final int DRAG_END = 5;
    public static final int DRAG_LEFT = 2;
    public static final int DRAG_RIGHT = 3;
    public static final int DRAG_START = 4;
    public static final int DRAG_UP = 0;
    public static final int FLAG_DISABLE_POST_SCROLL = 1;
    public static final int FLAG_DISABLE_SCROLL = 2;
    public static final int ON_UP_AUTOCOMPLETE = 0;
    public static final int ON_UP_AUTOCOMPLETE_TO_END = 2;
    public static final int ON_UP_AUTOCOMPLETE_TO_START = 1;
    public static final int ON_UP_DECELERATE = 4;
    public static final int ON_UP_DECELERATE_AND_COMPLETE = 5;
    public static final int ON_UP_NEVER_TO_END = 7;
    public static final int ON_UP_NEVER_TO_START = 6;
    public static final int ON_UP_STOP = 3;
    public static final int SIDE_BOTTOM = 3;
    public static final int SIDE_END = 6;
    public static final int SIDE_LEFT = 1;
    public static final int SIDE_MIDDLE = 4;
    public static final int SIDE_RIGHT = 2;
    public static final int SIDE_START = 5;
    public static final int SIDE_TOP = 0;
    public static final int SPRING_BOUNDARY_BOUNCEBOTH = 3;
    public static final int SPRING_BOUNDARY_BOUNCEEND = 2;
    public static final int SPRING_BOUNDARY_BOUNCESTART = 1;
    public static final int SPRING_BOUNDARY_OVERSHOOT = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f3138a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f3139b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f3140c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f3141d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f3142e = -1;

    /* renamed from: f  reason: collision with root package name */
    private int f3143f = 0;

    /* renamed from: g  reason: collision with root package name */
    private int f3144g = -1;

    /* renamed from: h  reason: collision with root package name */
    private float f3145h = 4.0f;

    /* renamed from: i  reason: collision with root package name */
    private float f3146i = 1.2f;

    /* renamed from: j  reason: collision with root package name */
    private boolean f3147j = true;

    /* renamed from: k  reason: collision with root package name */
    private float f3148k = 1.0f;

    /* renamed from: l  reason: collision with root package name */
    private int f3149l = 0;

    /* renamed from: m  reason: collision with root package name */
    private float f3150m = 10.0f;

    /* renamed from: n  reason: collision with root package name */
    private float f3151n = Float.NaN;

    /* renamed from: o  reason: collision with root package name */
    private float f3152o = 1.0f;

    /* renamed from: p  reason: collision with root package name */
    private float f3153p = Float.NaN;

    /* renamed from: q  reason: collision with root package name */
    private float f3154q = Float.NaN;

    /* renamed from: r  reason: collision with root package name */
    private int f3155r = 0;

    /* renamed from: s  reason: collision with root package name */
    private int f3156s = 0;

    public int getAutoCompleteMode() {
        return this.f3156s;
    }

    public int getDragDirection() {
        return this.f3138a;
    }

    public float getDragScale() {
        return this.f3148k;
    }

    public float getDragThreshold() {
        return this.f3150m;
    }

    public int getLimitBoundsTo() {
        return this.f3142e;
    }

    public float getMaxAcceleration() {
        return this.f3146i;
    }

    public float getMaxVelocity() {
        return this.f3145h;
    }

    public boolean getMoveWhenScrollAtTop() {
        return this.f3147j;
    }

    public int getNestedScrollFlags() {
        return this.f3149l;
    }

    public int getOnTouchUp() {
        return this.f3143f;
    }

    public int getRotationCenterId() {
        return this.f3144g;
    }

    public int getSpringBoundary() {
        return this.f3155r;
    }

    public float getSpringDamping() {
        return this.f3151n;
    }

    public float getSpringMass() {
        return this.f3152o;
    }

    public float getSpringStiffness() {
        return this.f3153p;
    }

    public float getSpringStopThreshold() {
        return this.f3154q;
    }

    public int getTouchAnchorId() {
        return this.f3140c;
    }

    public int getTouchAnchorSide() {
        return this.f3139b;
    }

    public int getTouchRegionId() {
        return this.f3141d;
    }

    public void setAutoCompleteMode(int autoCompleteMode) {
        this.f3156s = autoCompleteMode;
    }

    public OnSwipe setDragDirection(int dragDirection) {
        this.f3138a = dragDirection;
        return this;
    }

    public OnSwipe setDragScale(int dragScale) {
        this.f3148k = dragScale;
        return this;
    }

    public OnSwipe setDragThreshold(int dragThreshold) {
        this.f3150m = dragThreshold;
        return this;
    }

    public OnSwipe setLimitBoundsTo(int id) {
        this.f3142e = id;
        return this;
    }

    public OnSwipe setMaxAcceleration(int maxAcceleration) {
        this.f3146i = maxAcceleration;
        return this;
    }

    public OnSwipe setMaxVelocity(int maxVelocity) {
        this.f3145h = maxVelocity;
        return this;
    }

    public OnSwipe setMoveWhenScrollAtTop(boolean moveWhenScrollAtTop) {
        this.f3147j = moveWhenScrollAtTop;
        return this;
    }

    public OnSwipe setNestedScrollFlags(int flags) {
        this.f3149l = flags;
        return this;
    }

    public OnSwipe setOnTouchUp(int mode) {
        this.f3143f = mode;
        return this;
    }

    public OnSwipe setRotateCenter(int rotationCenterId) {
        this.f3144g = rotationCenterId;
        return this;
    }

    public OnSwipe setSpringBoundary(int springBoundary) {
        this.f3155r = springBoundary;
        return this;
    }

    public OnSwipe setSpringDamping(float springDamping) {
        this.f3151n = springDamping;
        return this;
    }

    public OnSwipe setSpringMass(float springMass) {
        this.f3152o = springMass;
        return this;
    }

    public OnSwipe setSpringStiffness(float springStiffness) {
        this.f3153p = springStiffness;
        return this;
    }

    public OnSwipe setSpringStopThreshold(float springStopThreshold) {
        this.f3154q = springStopThreshold;
        return this;
    }

    public OnSwipe setTouchAnchorId(int side) {
        this.f3140c = side;
        return this;
    }

    public OnSwipe setTouchAnchorSide(int side) {
        this.f3139b = side;
        return this;
    }

    public OnSwipe setTouchRegionId(int side) {
        this.f3141d = side;
        return this;
    }
}
