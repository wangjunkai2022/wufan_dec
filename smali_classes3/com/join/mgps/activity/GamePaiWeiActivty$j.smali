.class Lcom/join/mgps/activity/GamePaiWeiActivty$j;
.super Lcom/join/android/app/common/http/d$p;
.source "GamePaiWeiActivty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->Q(Ljava/io/File;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/android/app/common/http/d$p<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$j;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-direct {p0}, Lcom/join/android/app/common/http/d$p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$j;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->O(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty$j;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    const-class v1, Lcom/join/mgps/dto/PaiWeiUploadFileBean;

    invoke-virtual {v0, p1, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PaiWeiUploadFileBean;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$j;->b:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->S(Lcom/join/mgps/dto/PaiWeiUploadFileBean;)V

    return-void
.end method
