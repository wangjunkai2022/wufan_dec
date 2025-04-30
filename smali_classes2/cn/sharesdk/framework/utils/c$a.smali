.class public final enum Lcn/sharesdk/framework/utils/c$a;
.super Ljava/lang/Enum;
.source "Oauth1Signer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/utils/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/sharesdk/framework/utils/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/utils/c$a;

.field public static final enum b:Lcn/sharesdk/framework/utils/c$a;

.field private static final synthetic c:[Lcn/sharesdk/framework/utils/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/sharesdk/framework/utils/c$a;

    const-string v1, "HMAC_SHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/utils/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/utils/c$a;->a:Lcn/sharesdk/framework/utils/c$a;

    new-instance v1, Lcn/sharesdk/framework/utils/c$a;

    const-string v3, "PLAINTEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/sharesdk/framework/utils/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/sharesdk/framework/utils/c$a;->b:Lcn/sharesdk/framework/utils/c$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/sharesdk/framework/utils/c$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 2
    sput-object v3, Lcn/sharesdk/framework/utils/c$a;->c:[Lcn/sharesdk/framework/utils/c$a;

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

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/utils/c$a;
    .locals 1

    .line 1
    const-class v0, Lcn/sharesdk/framework/utils/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/sharesdk/framework/utils/c$a;

    return-object p0
.end method

.method public static values()[Lcn/sharesdk/framework/utils/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/utils/c$a;->c:[Lcn/sharesdk/framework/utils/c$a;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/utils/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/utils/c$a;

    return-object v0
.end method
