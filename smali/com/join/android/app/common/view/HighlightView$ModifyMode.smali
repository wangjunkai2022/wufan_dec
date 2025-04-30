.class public final enum Lcom/join/android/app/common/view/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/view/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/join/android/app/common/view/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/join/android/app/common/view/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

.field public static final enum None:Lcom/join/android/app/common/view/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/common/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->None:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    new-instance v1, Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    const-string v3, "Move"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/join/android/app/common/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->Move:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    new-instance v3, Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    const-string v5, "Grow"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/join/android/app/common/view/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->Grow:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->$VALUES:[Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/join/android/app/common/view/HighlightView$ModifyMode;
    .locals 1

    .line 1
    const-class v0, Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    return-object p0
.end method

.method public static values()[Lcom/join/android/app/common/view/HighlightView$ModifyMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->$VALUES:[Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    invoke-virtual {v0}, [Lcom/join/android/app/common/view/HighlightView$ModifyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    return-object v0
.end method
