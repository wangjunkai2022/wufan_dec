.class public final enum Lcn/sharesdk/framework/a/b;
.super Ljava/lang/Enum;
.source "PicUploadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/a/b;

.field public static final enum b:Lcn/sharesdk/framework/a/b;

.field private static final synthetic c:[Lcn/sharesdk/framework/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/sharesdk/framework/a/b;

    const-string v1, "FINISH_SHARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/a/b;->a:Lcn/sharesdk/framework/a/b;

    .line 2
    new-instance v1, Lcn/sharesdk/framework/a/b;

    const-string v3, "BEFORE_SHARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/sharesdk/framework/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/sharesdk/framework/a/b;->b:Lcn/sharesdk/framework/a/b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/sharesdk/framework/a/b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/sharesdk/framework/a/b;->c:[Lcn/sharesdk/framework/a/b;

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

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/a/b;
    .locals 1

    .line 1
    const-class v0, Lcn/sharesdk/framework/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/a/b;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/a/b;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/a/b;->c:[Lcn/sharesdk/framework/a/b;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/a/b;

    return-object v0
.end method
