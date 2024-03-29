.class public Lcom/instabug/survey/models/Survey;
.super Ljava/lang/Object;
.source "Survey.java"

# interfaces
.implements Lcom/instabug/library/internal/storage/cache/Cacheable;
.implements Ljava/io/Serializable;
.implements Ld0/l/f/m/e/a;


# static fields
.field private static final HAS_RESPOND:Ljava/lang/String; = "has_respond"

.field private static final KEY_ANSWERED:Ljava/lang/String; = "answered"

.field private static final KEY_CONDITIONS_OPERATOR:Ljava/lang/String; = "operator"

.field private static final KEY_CUSTOM_ATTRIBUTES:Ljava/lang/String; = "custom_attributes"

.field private static final KEY_DISMISSED_AT:Ljava/lang/String; = "dismissed_at"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_IS_CANCELLED:Ljava/lang/String; = "is_cancelled"

.field private static final KEY_IS_GOOGLE_PLAY_APP_RATING:Ljava/lang/String; = "app_rating"

.field private static final KEY_PAUSED:Ljava/lang/String; = "paused"

.field private static final KEY_PUBLISHED:Ljava/lang/String; = "published"

.field private static final KEY_QUESTIONS:Ljava/lang/String; = "questions"

.field private static final KEY_SESSION_COUNTER:Ljava/lang/String; = "session_counter"

.field private static final KEY_SHOULD_SHOW_AGAIN:Ljava/lang/String; = "should_show_again"

.field private static final KEY_SHOW_AT:Ljava/lang/String; = "show_at"

.field private static final KEY_SURVEY_EVENTS:Ljava/lang/String; = "events"

.field private static final KEY_SURVEY_STATE:Ljava/lang/String; = "survey_state"

.field private static final KEY_TARGET:Ljava/lang/String; = "target"

.field private static final KEY_TARGET_AUDIENCE:Ljava/lang/String; = "primitive_types"

.field private static final KEY_THANKS_LIST:Ljava/lang/String; = "thanks_list"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_USER_EVENTS:Ljava/lang/String; = "user_events"

.field private static final KEY_WELCOME_SCREEN:Ljava/lang/String; = "welcome_screen"


# instance fields
.field private id:J

.field private isGooglePlayAppRating:Z

.field private localization:Lcom/instabug/survey/f/c/b;

.field private paused:Z

.field private questions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/models/b;",
            ">;"
        }
    .end annotation
.end field

.field private thankYouItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/models/c;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:I

.field private userInteraction:Lcom/instabug/survey/f/c/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/instabug/survey/models/Survey;->paused:Z

    .line 3
    iput-boolean v0, p0, Lcom/instabug/survey/models/Survey;->isGooglePlayAppRating:Z

    .line 4
    new-instance v1, Lcom/instabug/survey/f/c/b;

    invoke-direct {v1}, Lcom/instabug/survey/f/c/b;-><init>()V

    iput-object v1, p0, Lcom/instabug/survey/models/Survey;->localization:Lcom/instabug/survey/f/c/b;

    .line 5
    new-instance v1, Lcom/instabug/survey/f/c/i;

    invoke-direct {v1, v0}, Lcom/instabug/survey/f/c/i;-><init>(I)V

    iput-object v1, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "published"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 5
    new-instance v3, Lcom/instabug/survey/models/Survey;

    invoke-direct {v3}, Lcom/instabug/survey/models/Survey;-><init>()V

    .line 6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/instabug/survey/models/Survey;->fromJson(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCustomThankYouMessage()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/instabug/survey/models/c;->j:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCustomThankYouTitle()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/instabug/survey/models/c;->i:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNPSAnswerValue()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/instabug/survey/models/Survey;->questions:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/b;

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, v1, Lcom/instabug/survey/models/b;->l:Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "NPS score parsing failed du to: "

    .line 4
    invoke-static {v2}, Ld0/e/a/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v0
.end method

.method private getNPSThankYouMessage()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/c;

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v2}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/models/c;

    const/4 v3, 0x2

    .line 5
    invoke-static {v0, v3}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/c;

    .line 6
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPromoter()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v1, Lcom/instabug/survey/models/c;->j:Ljava/lang/String;

    return-object v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 9
    iget-object v0, v2, Lcom/instabug/survey/models/c;->j:Ljava/lang/String;

    return-object v0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isDetractor()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, v0, Lcom/instabug/survey/models/c;->j:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getNPSThankYouTitle()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/c;

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v2}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/models/c;

    const/4 v3, 0x2

    .line 5
    invoke-static {v0, v3}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/c;

    .line 6
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPromoter()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v1, Lcom/instabug/survey/models/c;->i:Ljava/lang/String;

    return-object v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 9
    iget-object v0, v2, Lcom/instabug/survey/models/c;->i:Ljava/lang/String;

    return-object v0

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isDetractor()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, v0, Lcom/instabug/survey/models/c;->i:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPausedSurveysFromJson(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/instabug/survey/models/Survey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "paused"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v2, Lcom/instabug/survey/models/Survey;

    invoke-direct {v2}, Lcom/instabug/survey/models/Survey;-><init>()V

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/instabug/survey/models/Survey;->setPaused(Z)V

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private hasNPSSubmitted()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/f/c/a;

    .line 5
    iget-object v1, v1, Lcom/instabug/survey/f/c/a;->h:Lcom/instabug/survey/f/c/a$a;

    .line 6
    sget-object v2, Lcom/instabug/survey/f/c/a$a;->SUBMIT:Lcom/instabug/survey/f/c/a$a;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isDetractor()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->getNPSAnswerValue()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPassive()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->getNPSAnswerValue()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->getNPSAnswerValue()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPromoter()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->getNPSAnswerValue()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSessionCounter(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput p1, v0, Lcom/instabug/survey/f/c/i;->s:I

    return-void
.end method


# virtual methods
.method public addRateEvent()V
    .locals 5

    .line 1
    new-instance v0, Lcom/instabug/survey/f/c/a;

    sget-object v1, Lcom/instabug/survey/f/c/a$a;->RATE:Lcom/instabug/survey/f/c/a$a;

    .line 2
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getAttemptCount()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instabug/survey/f/c/a;-><init>(Lcom/instabug/survey/f/c/a$a;JI)V

    .line 3
    iget-object v1, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 4
    iget-object v1, v1, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 5
    iget-object v1, v1, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShowEvent()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Lcom/instabug/survey/f/c/i;->n:J

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 4
    iget v1, v0, Lcom/instabug/survey/f/c/i;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/instabug/survey/f/c/i;->p:I

    .line 5
    new-instance v1, Lcom/instabug/survey/f/c/a;

    sget-object v2, Lcom/instabug/survey/f/c/a$a;->SHOW:Lcom/instabug/survey/f/c/a$a;

    .line 6
    iget-wide v3, v0, Lcom/instabug/survey/f/c/i;->n:J

    .line 7
    iget v5, v0, Lcom/instabug/survey/f/c/i;->q:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/instabug/survey/f/c/i;->q:I

    .line 8
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/instabug/survey/f/c/a;-><init>(Lcom/instabug/survey/f/c/a$a;JI)V

    .line 9
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 10
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAnswers()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/b;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/instabug/survey/models/b;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "NP_METHOD_PARAMETER_TIGHTENS_ANNOTATION"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/instabug/survey/models/Survey;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/instabug/survey/models/Survey;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public fromJson(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 9
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/survey/models/Survey;->setId(J)Lcom/instabug/survey/models/Survey;

    :cond_0
    const-string p1, "type"

    .line 11
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setType(I)V

    :cond_1
    const-string p1, "title"

    .line 14
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setTitle(Ljava/lang/String;)V

    :cond_2
    const-string p1, "token"

    .line 16
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 17
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setToken(Ljava/lang/String;)V

    :cond_3
    const-string p1, "events"

    .line 18
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 20
    iget-object v1, v1, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 21
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/f/c/a;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    .line 22
    iput-object p1, v1, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    :cond_4
    const-string p1, "questions"

    .line 23
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/models/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setQuestions(Ljava/util/ArrayList;)V

    :cond_5
    const-string p1, "target"

    .line 25
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 28
    iget-object v1, v1, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 29
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/instabug/survey/f/c/g;->fromJson(Ljava/lang/String;)V

    :cond_6
    const-string p1, "answered"

    .line 30
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 31
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    :cond_7
    const-string p1, "is_cancelled"

    .line 32
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 33
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    :cond_8
    const-string p1, "survey_state"

    .line 34
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 35
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/survey/f/c/f;->valueOf(Ljava/lang/String;)Lcom/instabug/survey/f/c/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/f/c/f;)V

    :cond_9
    const-string p1, "should_show_again"

    .line 36
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 37
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    :cond_a
    const-string p1, "session_counter"

    .line 38
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 39
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/instabug/survey/models/Survey;->setSessionCounter(I)V

    :cond_b
    const-string p1, "dismissed_at"

    .line 40
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 41
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/survey/models/Survey;->setDismissedAt(J)V

    :cond_c
    const-string p1, "show_at"

    .line 42
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 43
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lcom/instabug/survey/models/Survey;->setShowAt(J)V

    :cond_d
    const-string p1, "thanks_list"

    .line 44
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 45
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/instabug/survey/models/c;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setThankYouItems(Ljava/util/ArrayList;)V

    .line 47
    :cond_e
    iget-object p1, p0, Lcom/instabug/survey/models/Survey;->localization:Lcom/instabug/survey/f/c/b;

    invoke-virtual {p1, v0}, Lcom/instabug/survey/f/c/b;->b(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    const-string v1, "app_rating"

    .line 48
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/instabug/survey/models/Survey;->setGooglePlayAppRating(Z)V

    return-void
.end method

.method public getAttemptCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget v0, v0, Lcom/instabug/survey/f/c/i;->p:I

    return v0
.end method

.method public getConditionsOperator()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAttributes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/f/c/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDismissedAt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-wide v0, v0, Lcom/instabug/survey/f/c/i;->m:J

    return-wide v0
.end method

.method public getEventIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget v0, v0, Lcom/instabug/survey/f/c/i;->q:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/survey/models/Survey;->id:J

    return-wide v0
.end method

.method public getLocalization()Lcom/instabug/survey/f/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->localization:Lcom/instabug/survey/f/c/b;

    return-object v0
.end method

.method public getQuestions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/models/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->questions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRatingCTATitle()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isAppStoreRatingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/c;

    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v2}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/c;

    .line 6
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPromoter()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v1, Lcom/instabug/survey/models/c;->k:Ljava/lang/String;

    return-object v0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v0, Lcom/instabug/survey/models/c;->k:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRespondedAt()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isLastEventDismiss()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 3
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 4
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 7
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 8
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/f/c/a;

    .line 10
    iget-object v4, v3, Lcom/instabug/survey/f/c/a;->h:Lcom/instabug/survey/f/c/a$a;

    .line 11
    sget-object v5, Lcom/instabug/survey/f/c/a$a;->SUBMIT:Lcom/instabug/survey/f/c/a$a;

    if-ne v4, v5, :cond_1

    .line 12
    iget-wide v0, v3, Lcom/instabug/survey/f/c/a;->i:J

    return-wide v0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_4

    .line 15
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/survey/models/b;

    .line 16
    iget-wide v3, v3, Lcom/instabug/survey/models/b;->m:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    .line 18
    iget-wide v0, v0, Lcom/instabug/survey/models/b;->m:J

    return-wide v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-wide v1
.end method

.method public getSecondaryNegativeQuestion()Lcom/instabug/survey/models/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isStoreRatingSurvey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isGooglePlayAppRating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getQuestions()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/b;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionCounter()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget v0, v0, Lcom/instabug/survey/f/c/i;->s:I

    return v0
.end method

.method public getShownAt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-wide v0, v0, Lcom/instabug/survey/f/c/i;->n:J

    return-wide v0
.end method

.method public getSurveyEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/f/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSurveyId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/survey/models/Survey;->id:J

    return-wide v0
.end method

.method public getSurveyState()Lcom/instabug/survey/f/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->u:Lcom/instabug/survey/f/c/f;

    return-object v0
.end method

.method public getTarget()Lcom/instabug/survey/f/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    return-object v0
.end method

.method public getTargetAudiences()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/f/c/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    invoke-virtual {v0}, Lcom/instabug/survey/f/c/g;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getThankYouItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/models/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->thankYouItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThankYouMessage()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->getNPSThankYouMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->getCustomThankYouMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getThankYouTitle()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->getNPSThankYouTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->getCustomThankYouTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/instabug/survey/models/Survey;->type:I

    return v0
.end method

.method public getTypeAsString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/instabug/survey/models/Survey;->type:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "StoreRating"

    return-object v0

    :cond_1
    const-string v0, "NPS"

    return-object v0

    :cond_2
    const-string v0, "Custom"

    return-object v0
.end method

.method public getUserEvents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/f/c/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserInteraction()Lcom/instabug/survey/f/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    return-object v0
.end method

.method public hasPositiveNpsAnswer()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPromoter()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPassive()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public incrementSessionCount()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget v1, v0, Lcom/instabug/survey/f/c/i;->s:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/instabug/survey/f/c/i;->s:I

    .line 3
    iput v1, v0, Lcom/instabug/survey/f/c/i;->s:I

    return-void
.end method

.method public isAnswered()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-boolean v0, v0, Lcom/instabug/survey/f/c/i;->l:Z

    return v0
.end method

.method public isAppStoreRatingEnabled()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getThankYouItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 3
    invoke-static {v0, v2}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/c;

    const/4 v3, 0x1

    .line 4
    invoke-static {v0, v3}, Lcom/instabug/library/util/ListUtils;->safeGet(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/models/c;

    .line 5
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPromoter()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 6
    iget-boolean v0, v1, Lcom/instabug/survey/models/c;->l:Z

    return v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->isPassive()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, v0, Lcom/instabug/survey/models/c;->l:Z

    return v0

    :cond_1
    return v2
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-boolean v0, v0, Lcom/instabug/survey/f/c/i;->o:Z

    return v0
.end method

.method public isGooglePlayAppRating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/models/Survey;->isGooglePlayAppRating:Z

    return v0
.end method

.method public isLastEventDismiss()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 5
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 6
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/f/c/a;

    .line 8
    iget-object v0, v0, Lcom/instabug/survey/f/c/a;->h:Lcom/instabug/survey/f/c/a$a;

    .line 9
    sget-object v2, Lcom/instabug/survey/f/c/a$a;->DISMISS:Lcom/instabug/survey/f/c/a$a;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLastEventSubmit()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 5
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 6
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/f/c/a;

    .line 8
    iget-object v0, v0, Lcom/instabug/survey/f/c/a;->h:Lcom/instabug/survey/f/c/a$a;

    .line 9
    sget-object v2, Lcom/instabug/survey/f/c/a$a;->SUBMIT:Lcom/instabug/survey/f/c/a$a;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNPSSurvey()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOptInSurvey()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/survey/models/Survey;->paused:Z

    return v0
.end method

.method public isStoreRatingSurvey()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetSessionsCounter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/instabug/survey/f/c/i;->s:I

    return-void
.end method

.method public resetUserAnswers()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/models/b;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v1, Lcom/instabug/survey/models/b;->l:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v1, Lcom/instabug/survey/models/b;->m:J

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetUserInteractions()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iput-object v1, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Lcom/instabug/survey/f/c/i;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/instabug/survey/f/c/i;-><init>(I)V

    iput-object v1, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 6
    iput-object v0, v1, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    return-void
.end method

.method public setAnswered(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput-boolean p1, v0, Lcom/instabug/survey/f/c/i;->l:Z

    return-void
.end method

.method public setAttemptCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput p1, v0, Lcom/instabug/survey/f/c/i;->p:I

    return-void
.end method

.method public setCancelled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput-boolean p1, v0, Lcom/instabug/survey/f/c/i;->o:Z

    return-void
.end method

.method public setConditionsOperator(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iput-object p1, v0, Lcom/instabug/survey/f/c/g;->n:Ljava/lang/String;

    return-void
.end method

.method public setCustomAttributes(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/f/c/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iput-object p1, v0, Lcom/instabug/survey/f/c/g;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public setDismissed()V
    .locals 6

    .line 1
    sget-object v0, Lcom/instabug/survey/f/c/f;->READY_TO_SEND:Lcom/instabug/survey/f/c/f;

    invoke-virtual {p0, v0}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/f/c/f;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->hasPositiveNpsAnswer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->hasNPSSubmitted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isOptInSurvey()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 4
    iget-wide v2, v0, Lcom/instabug/survey/f/c/i;->m:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/instabug/survey/models/Survey;->setShouldShowAgain(Z)V

    .line 6
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v2

    .line 7
    iput-wide v2, v0, Lcom/instabug/survey/f/c/i;->m:J

    .line 8
    invoke-virtual {p0, v1}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 10
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 11
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 13
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 14
    iget-object v0, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/f/c/a;

    .line 16
    iget-object v0, v0, Lcom/instabug/survey/f/c/a;->h:Lcom/instabug/survey/f/c/a$a;

    .line 17
    sget-object v1, Lcom/instabug/survey/f/c/a$a;->DISMISS:Lcom/instabug/survey/f/c/a$a;

    if-ne v0, v1, :cond_3

    return-void

    .line 18
    :cond_3
    new-instance v0, Lcom/instabug/survey/f/c/a;

    sget-object v1, Lcom/instabug/survey/f/c/a$a;->DISMISS:Lcom/instabug/survey/f/c/a$a;

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 19
    iget-wide v2, v2, Lcom/instabug/survey/f/c/i;->m:J

    .line 20
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getEventIndex()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/instabug/survey/f/c/a;-><init>(Lcom/instabug/survey/f/c/a$a;JI)V

    .line 21
    iget-object v1, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 22
    iget-object v1, v1, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 23
    iget-object v1, v1, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setDismissedAt(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput-wide p1, v0, Lcom/instabug/survey/f/c/i;->m:J

    return-void
.end method

.method public setEventIndex(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput p1, v0, Lcom/instabug/survey/f/c/i;->q:I

    return-void
.end method

.method public setGooglePlayAppRating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/survey/models/Survey;->isGooglePlayAppRating:Z

    return-void
.end method

.method public setId(J)Lcom/instabug/survey/models/Survey;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/instabug/survey/models/Survey;->id:J

    return-object p0
.end method

.method public setLocalization(Lcom/instabug/survey/f/c/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/models/Survey;->localization:Lcom/instabug/survey/f/c/b;

    return-void
.end method

.method public setPaused(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/survey/models/Survey;->paused:Z

    return-void
.end method

.method public setQuestions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/models/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/models/Survey;->questions:Ljava/util/ArrayList;

    return-void
.end method

.method public setSessionCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput p1, v0, Lcom/instabug/survey/f/c/i;->s:I

    return-void
.end method

.method public setShouldShowAgain(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput-boolean p1, v0, Lcom/instabug/survey/f/c/i;->t:Z

    return-void
.end method

.method public setShowAt(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput-wide p1, v0, Lcom/instabug/survey/f/c/i;->n:J

    return-void
.end method

.method public setSubmitted()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/instabug/survey/models/Survey;->setCancelled(Z)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/instabug/survey/models/Survey;->setAnswered(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isNPSSurvey()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isAnswered()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/instabug/survey/models/Survey;->hasNPSSubmitted()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->hasPositiveNpsAnswer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    new-instance v0, Lcom/instabug/survey/f/c/a;

    sget-object v2, Lcom/instabug/survey/f/c/a$a;->RATE:Lcom/instabug/survey/f/c/a$a;

    .line 5
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getEventIndex()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/instabug/survey/f/c/a;-><init>(Lcom/instabug/survey/f/c/a$a;JI)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lcom/instabug/survey/f/c/a;

    sget-object v3, Lcom/instabug/survey/f/c/a$a;->SUBMIT:Lcom/instabug/survey/f/c/a$a;

    .line 7
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeSeconds()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getEventIndex()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/instabug/survey/f/c/a;-><init>(Lcom/instabug/survey/f/c/a$a;JI)V

    .line 8
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->isOptInSurvey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 10
    iput v0, v3, Lcom/instabug/survey/f/c/i;->p:I

    :cond_1
    move-object v0, v2

    .line 11
    :goto_0
    sget-object v2, Lcom/instabug/survey/f/c/f;->READY_TO_SEND:Lcom/instabug/survey/f/c/f;

    invoke-virtual {p0, v2}, Lcom/instabug/survey/models/Survey;->setSurveyState(Lcom/instabug/survey/f/c/f;)V

    .line 12
    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 13
    iget-object v2, v2, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 14
    iget-object v3, v2, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 16
    iget-object v3, v2, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/survey/f/c/a;

    .line 18
    iget-object v1, v1, Lcom/instabug/survey/f/c/a;->h:Lcom/instabug/survey/f/c/a$a;

    .line 19
    sget-object v3, Lcom/instabug/survey/f/c/a$a;->SUBMIT:Lcom/instabug/survey/f/c/a$a;

    if-ne v1, v3, :cond_2

    .line 20
    iget-object v1, v0, Lcom/instabug/survey/f/c/a;->h:Lcom/instabug/survey/f/c/a$a;

    if-ne v1, v3, :cond_2

    return-void

    .line 21
    :cond_2
    iget-object v1, v2, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public setSurveyEvents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/f/c/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iput-object p1, v0, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public setSurveyState(Lcom/instabug/survey/f/c/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput-object p1, v0, Lcom/instabug/survey/f/c/i;->u:Lcom/instabug/survey/f/c/f;

    return-void
.end method

.method public setTarget(Lcom/instabug/survey/f/c/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iput-object p1, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    return-void
.end method

.method public setTargetAudiences(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/f/c/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iput-object p1, v0, Lcom/instabug/survey/f/c/g;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public setThankYouItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/models/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/models/Survey;->thankYouItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/models/Survey;->title:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/models/Survey;->token:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/survey/models/Survey;->type:I

    return-void
.end method

.method public setUserEvents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/survey/f/c/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v0, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iput-object p1, v0, Lcom/instabug/survey/f/c/g;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public setUserInteraction(Lcom/instabug/survey/f/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    return-void
.end method

.method public shouldShow()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-object v1, v0, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 3
    iget-object v2, v1, Lcom/instabug/survey/f/c/g;->m:Lcom/instabug/survey/f/c/d;

    .line 4
    iget v2, v2, Lcom/instabug/survey/f/c/d;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 5
    :goto_0
    iget-boolean v0, v0, Lcom/instabug/survey/f/c/i;->r:Z

    xor-int/2addr v0, v5

    if-ne v2, v5, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    xor-int/2addr v2, v5

    .line 6
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getShownAt()J

    move-result-wide v6

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long/2addr v8, v6

    .line 8
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v6

    long-to-int v6, v6

    .line 9
    iget-object v1, v1, Lcom/instabug/survey/f/c/g;->m:Lcom/instabug/survey/f/c/d;

    .line 10
    invoke-virtual {v1}, Lcom/instabug/survey/f/c/d;->a()I

    move-result v1

    if-lt v6, v1, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    if-nez v3, :cond_3

    if-nez v0, :cond_3

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    return v4
.end method

.method public shouldShowAgain()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 2
    iget-boolean v0, v0, Lcom/instabug/survey/f/c/i;->t:Z

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/instabug/survey/models/Survey;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget v2, p0, Lcom/instabug/survey/models/Survey;->type:I

    const-string v3, "type"

    .line 3
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    iget-boolean v2, p0, Lcom/instabug/survey/models/Survey;->isGooglePlayAppRating:Z

    const-string v3, "app_rating"

    .line 4
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->title:Ljava/lang/String;

    const-string v3, "title"

    .line 5
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->token:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const-string v3, "token"

    .line 6
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->questions:Ljava/util/ArrayList;

    .line 7
    invoke-static {v2}, Lcom/instabug/survey/models/b;->c(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "questions"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 8
    iget-object v2, v2, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 9
    invoke-static {v2}, Lcom/instabug/survey/f/c/g;->a(Lcom/instabug/survey/f/c/g;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "target"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 10
    iget-object v2, v2, Lcom/instabug/survey/f/c/i;->j:Lcom/instabug/survey/f/c/g;

    .line 11
    iget-object v2, v2, Lcom/instabug/survey/f/c/g;->k:Ljava/util/ArrayList;

    .line 12
    invoke-static {v2}, Lcom/instabug/survey/f/c/a;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 13
    iget-boolean v2, v2, Lcom/instabug/survey/f/c/i;->l:Z

    const-string v3, "answered"

    .line 14
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 15
    iget-wide v2, v2, Lcom/instabug/survey/f/c/i;->n:J

    const-string v4, "show_at"

    .line 16
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getDismissedAt()J

    move-result-wide v2

    const-string v4, "dismissed_at"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->userInteraction:Lcom/instabug/survey/f/c/i;

    .line 18
    iget-boolean v2, v2, Lcom/instabug/survey/f/c/i;->o:Z

    const-string v3, "is_cancelled"

    .line 19
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getSurveyState()Lcom/instabug/survey/f/c/f;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "survey_state"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 21
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->shouldShowAgain()Z

    move-result v2

    const-string v3, "should_show_again"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/survey/models/Survey;->thankYouItems:Ljava/util/ArrayList;

    .line 22
    invoke-static {v2}, Lcom/instabug/survey/models/c;->b(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "thanks_list"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->getSessionCounter()I

    move-result v2

    const-string v3, "session_counter"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    iget-object v1, p0, Lcom/instabug/survey/models/Survey;->localization:Lcom/instabug/survey/f/c/b;

    invoke-virtual {v1, v0}, Lcom/instabug/survey/f/c/b;->d(Lorg/json/JSONObject;)V

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/survey/models/Survey;->toJson()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Survey"

    invoke-static {v2, v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
