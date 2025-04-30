.class public final Lcom/mob/tools/RxMob$Subscribable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscribable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mob/tools/proguard/EverythingKeeper;"
    }
.end annotation


# instance fields
.field private observeThread:Lcom/mob/tools/RxMob$Thread;

.field private onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field

.field private subscribeThread:Lcom/mob/tools/RxMob$Thread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/RxMob$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscribable;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$OnSubscribe;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$OnSubscribe;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mob/tools/RxMob$Subscribable;->observeThread:Lcom/mob/tools/RxMob$Thread;

    return-object p0
.end method


# virtual methods
.method public observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Thread;",
            ")",
            "Lcom/mob/tools/RxMob$Subscribable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->observeThread:Lcom/mob/tools/RxMob$Thread;

    return-object p0
.end method

.method public subscribe(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/mob/tools/RxMob$Subscribable;->subscribeThread:Lcom/mob/tools/RxMob$Thread;

    sget-object v2, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 3
    new-instance v1, Lcom/mob/tools/RxMob$Subscribable$1;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/RxMob$Subscribable$1;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    invoke-static {v0, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v1, v2, :cond_1

    .line 5
    new-instance v0, Lcom/mob/tools/RxMob$Subscribable$2;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/RxMob$Subscribable$2;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/RxMob$SubscriberWarpper;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    invoke-interface {v0, v1}, Lcom/mob/tools/RxMob$OnSubscribe;->call(Lcom/mob/tools/RxMob$Subscriber;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Thread;",
            ")",
            "Lcom/mob/tools/RxMob$Subscribable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->subscribeThread:Lcom/mob/tools/RxMob$Thread;

    return-object p0
.end method

.method public subscribeOnNewThreadAndObserveOnUIThread(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 2
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 3
    invoke-virtual {p0, p1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method
