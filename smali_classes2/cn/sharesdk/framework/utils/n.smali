.class public Lcn/sharesdk/framework/utils/n;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/utils/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Lcn/sharesdk/framework/utils/n$a;

    invoke-direct {v0}, Lcn/sharesdk/framework/utils/n$a;-><init>()V

    .line 2
    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 3
    invoke-virtual {v0}, Lcn/sharesdk/framework/utils/n$a;->a()Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method
