.class Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;
.super Ljava/lang/Object;
.source "DownloadMethodPromptDialog_.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->update(Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

.field final synthetic b:Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;->b:Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;

    iput-object p2, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;->a:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;->b:Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;

    iget-object v1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_$a;->a:Lcom/join/mgps/dto/QueryDownloadInfoResponseData;

    invoke-static {v0, v1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;->Q0(Lcom/join/mgps/dialog/DownloadMethodPromptDialog_;Lcom/join/mgps/dto/QueryDownloadInfoResponseData;)V

    return-void
.end method
