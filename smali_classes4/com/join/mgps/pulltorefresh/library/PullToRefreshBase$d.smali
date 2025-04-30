.class synthetic Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->d:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->d:[I

    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    :try_start_2
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->MANUAL_REFRESH_ONLY:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->c:[I

    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 3
    :catch_5
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    :try_start_6
    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RESET:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    sget-object v5, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    sget-object v4, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->b:[I

    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;->OVERSCROLLING:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 4
    :catch_b
    invoke-static {}, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->values()[Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    :try_start_c
    sget-object v3, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$d;->a:[I

    sget-object v2, Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/join/mgps/pulltorefresh/library/PullToRefreshBase$Orientation;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
