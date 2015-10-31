.class Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;
.super Landroid/os/AsyncTask;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/login/Register;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private resultString:Ljava/lang/String;

.field final synthetic this$0:Lcom/rayclear/videomessage/ui/login/Register;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/login/Register;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->resultString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/login/Register;Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;-><init>(Lcom/rayclear/videomessage/ui/login/Register;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 14
    .parameter "params"

    .prologue
    .line 152
    const/4 v9, 0x0

    .line 154
    .local v9, statuscode:I
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/users/registrations.json?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, url:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "registr url = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 156
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v6}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 158
    .local v6, multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    const-string v11, "user[username]"

    new-instance v12, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v13, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    #getter for: Lcom/rayclear/videomessage/ui/login/Register;->usernameEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/rayclear/videomessage/ui/login/Register;->access$0(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 159
    const-string v11, "user[email]"

    new-instance v12, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v13, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    #getter for: Lcom/rayclear/videomessage/ui/login/Register;->emailEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/rayclear/videomessage/ui/login/Register;->access$1(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 160
    const-string v11, "user[password]"

    new-instance v12, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v13, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    #getter for: Lcom/rayclear/videomessage/ui/login/Register;->passwdEditText:Landroid/widget/EditText;
    invoke-static {v13}, Lcom/rayclear/videomessage/ui/login/Register;->access$2(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/widget/EditText;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 162
    invoke-virtual {v3, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 163
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 164
    .local v0, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.connection.timeout"

    const/16 v13, 0x4e20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 165
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.socket.timeout"

    const/16 v13, 0x4e20

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 167
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 168
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 169
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "statuscode = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 170
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0x12c

    if-ge v11, v12, :cond_0

    .line 171
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ge v11, v12, :cond_1

    .line 173
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v5, jsonObject:Lorg/json/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "register result = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 175
    const-string v11, "reason"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->resultString:Ljava/lang/String;

    .line 177
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    :cond_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-lt v11, v12, :cond_2

    .line 178
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0x12c

    if-ge v11, v12, :cond_2

    .line 180
    new-instance v7, Lorg/json/JSONObject;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    .local v7, object:Lorg/json/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "register result = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 183
    iget-object v11, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    const-string v12, "pref"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/rayclear/videomessage/ui/login/Register;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 184
    .local v8, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 185
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "userphone"

    iget-object v12, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    #getter for: Lcom/rayclear/videomessage/ui/login/Register;->emailEditText:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/rayclear/videomessage/ui/login/Register;->access$1(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    const-string v11, "userpasswd"

    iget-object v12, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    #getter for: Lcom/rayclear/videomessage/ui/login/Register;->passwdEditText:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/rayclear/videomessage/ui/login/Register;->access$2(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v7           #object:Lorg/json/JSONObject;
    .end local v8           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/http/entity/mime/MultipartEntity;->consumeContent()V

    .line 193
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 194
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 207
    .end local v0           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v10           #url:Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    return-object v11

    .line 198
    :catch_0
    move-exception v1

    .line 200
    .local v1, e:Ljava/lang/Exception;
    sget-boolean v11, Lcom/rayclear/videomessage/common/AppContext;->isDebugMode:Z

    if-eqz v11, :cond_3

    .line 202
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v6       #multipartEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    .restart local v10       #url:Ljava/lang/String;
    :catch_1
    move-exception v11

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    #getter for: Lcom/rayclear/videomessage/ui/login/Register;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/login/Register;->access$3(Lcom/rayclear/videomessage/ui/login/Register;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    const-class v3, Lcom/rayclear/videomessage/ui/login/Login;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/rayclear/videomessage/ui/login/Register;->startActivity(Landroid/content/Intent;)V

    .line 216
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/login/Register;->finish()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->this$0:Lcom/rayclear/videomessage/ui/login/Register;

    iget-object v1, p0, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->resultString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/login/Register$RegisterTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 148
    return-void
.end method
