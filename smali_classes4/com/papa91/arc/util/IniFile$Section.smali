.class public Lcom/papa91/arc/util/IniFile$Section;
.super Ljava/lang/Object;
.source "IniFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/util/IniFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Section"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/papa91/arc/util/IniFile;

.field private values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/papa91/arc/util/IniFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/util/IniFile$Section;->this$0:Lcom/papa91/arc/util/IniFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/util/IniFile$Section;->values:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/util/IniFile$Section;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/util/IniFile$Section;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/papa91/arc/util/IniFile$Section;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/util/IniFile$Section;->name:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile$Section;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile$Section;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile$Section;->values:Ljava/util/Map;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/util/IniFile$Section;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/util/IniFile$Section;->name:Ljava/lang/String;

    return-void
.end method
