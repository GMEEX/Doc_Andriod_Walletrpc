package cn.bizzan.ui.signup;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.geetest.sdk.Bind.GT3GeetestBindListener;
import com.geetest.sdk.Bind.GT3GeetestUtilsBind;
import com.google.gson.Gson;
import com.gyf.barlibrary.ImmersionBar;

import org.json.JSONObject;

import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import cn.bizzan.R;
import cn.bizzan.app.Injection;
import cn.bizzan.base.BaseTransFragment;
import cn.bizzan.entity.Captcha;
import cn.bizzan.entity.Country;
import cn.bizzan.ui.country.CountryActivity;
import cn.bizzan.ui.login.LoginActivity;
import cn.bizzan.utils.WonderfulCodeUtils;
import cn.bizzan.utils.WonderfulStringUtils;
import cn.bizzan.utils.WonderfulToastUtils;

/**
 * Created by Administrator on 2018/2/2.
 */

public class EmailSignUpFragment extends BaseTransFragment implements SignUpContract.EmailView {
    public static final String TAG = EmailSignUpFragment.class.getSimpleName();
    @BindView(R.id.ibBack)
    ImageButton ibBack;
    @BindView(R.id.tvChangeType)
    TextView tvChangeType;
    @BindView(R.id.llTitle)
    LinearLayout llTitle;
    @BindView(R.id.etEmail)
    EditText etEmail;
    @BindView(R.id.etPassword)
    EditText etPassword;
    @BindView(R.id.etRePassword)
    EditText etRePassword;
    @BindView(R.id.tvSignUp)
    TextView tvSignUp;
    @BindView(R.id.tvBack)
    TextView tvBack;
    @BindView(R.id.tuijian)
    EditText tuijian;
    @BindView(R.id.yan)
    ImageView yan;
    @BindView(R.id.yan1)
    ImageView yan1;
    @BindView(R.id.checkbox)
    CheckBox checkbox;
    @BindView(R.id.text_yonghu)
    TextView textYonghu;
    @BindView(R.id.tvToRegist)
    TextView tvToRegist;
    Unbinder unbinder;
    private SignUpContract.EmailPresenter presenter;
    private GT3GeetestUtilsBind gt3GeetestUtils;
    private boolean isYan = false;
    private boolean isYan1 = false;

    public static EmailSignUpFragment getInstance() {
        EmailSignUpFragment emailSignUpFragment = new EmailSignUpFragment();
        return emailSignUpFragment;
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        if (!(getActivity() instanceof BaseSignUpFragment.OperateCallback)) {
            throw new RuntimeException("The Activity which this fragment is located must implement the OperateCallback interface!");
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        gt3GeetestUtils.cancelUtils();
        unbinder.unbind();
    }

    @Override
    protected int getLayoutId() {
        return R.layout.fragment_email_sign_up;
    }

    @Override
    protected void initViews(Bundle savedInstanceState) {
        gt3GeetestUtils = new GT3GeetestUtilsBind(getActivity());
        new EmailSignUpPresenter(Injection.provideTasksRepository(getActivity().getApplicationContext()), this);
        ibBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        tvBack.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        tvChangeType.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                ((BaseSignUpFragment.OperateCallback) getActivity()).switchType(BaseSignUpFragment.Type.PHONE);
            }
        });
        tvToRegist.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                LoginActivity.actionStart(getActivity());
            }
        });
        tvSignUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                signUpByEmail();
            }
        });
        yan.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                isYan = !isYan;
                Drawable no = getResources().getDrawable(R.drawable.yan_no);
                Drawable yes = getResources().getDrawable(R.drawable.yan_yes);
                if (isYan) {
                    //显示
                    etPassword.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                    yan.setImageDrawable(no);

                } else {
                    etPassword.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    yan.setImageDrawable(yes);
                }
            }
        });
        yan1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                isYan1 = !isYan1;
                Drawable no = getResources().getDrawable(R.drawable.yan_no);
                Drawable yes = getResources().getDrawable(R.drawable.yan_yes);
                if (isYan1) {
                    //显示
                    etRePassword.setTransformationMethod(HideReturnsTransformationMethod.getInstance());
                    yan1.setImageDrawable(no);

                } else {
                    etRePassword.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    yan1.setImageDrawable(yes);
                }
            }
        });
    }

    private void signUpByEmail() {
        String email = etEmail.getText().toString();
        String password = etPassword.getText().toString();
        String rePassword = etRePassword.getText().toString();
        String tuijian2 = tuijian.getText().toString();
        if (WonderfulStringUtils.isEmpty(email, password, rePassword) || !email.contains("@")) {
            WonderfulToastUtils.showToast(WonderfulToastUtils.getString(R.string.Incomplete_information));
            return;
        }
        if (!checkbox.isChecked()) {
            WonderfulToastUtils.showToast(WonderfulToastUtils.getString(R.string.xieyi));
            return;
        }
        if (!password.equals(rePassword)) {
            WonderfulToastUtils.showToast(R.string.pwd_diff);
            return;
        }
        String country = "中国";
        if (password.equals(rePassword)) {
            presenter.signUpByEmail(email, password, tuijian2, country, "", "", "");
        } else {
            WonderfulToastUtils.showToast(WonderfulToastUtils.getString(R.string.pwd_diff));
            return;
        }
    }


    @Override
    protected void obtainData() {

    }

    @Override
    protected void fillWidget() {

    }

    @Override
    protected void loadData() {

    }

    @Override
    protected void initImmersionBar() {
        super.initImmersionBar();
        if (!isSetTitle) {
            ImmersionBar.setTitleBar(getActivity(), llTitle);
            isSetTitle = true;
        }
    }

    @Override
    public void setPresenter(SignUpContract.EmailPresenter presenter) {
        this.presenter = presenter;
    }

    @Override
    public void signUpByEmailSuccess(String obj) {
        gt3GeetestUtils.gt3TestFinish();
        WonderfulToastUtils.showToast(obj);
        finish();
    }

    @Override
    public void signUpByEmailFail(Integer code, String toastMessage) {
        gt3GeetestUtils.gt3Dismiss();
        WonderfulCodeUtils.checkedErrorCode(getmActivity(), code, toastMessage);
    }

    @Override
    public void captchSuccess(JSONObject obj) {
        gt3GeetestUtils.gtSetApi1Json(obj);
        gt3GeetestUtils.getGeetest(getActivity(), null, null, null, new GT3GeetestBindListener() {
            @Override
            public boolean gt3SetIsCustom() {
                return true;
            }

            @Override
            public void gt3GetDialogResult(boolean status, String result) {
                if (status) {
                    Captcha captcha = new Gson().fromJson(result, Captcha.class);
                    if (captcha == null) return;
                    String challenge = captcha.getGeetest_challenge();
                    String validate = captcha.getGeetest_validate();
                    String seccode = captcha.getGeetest_seccode();
                    String email = etEmail.getText().toString();
                    String password = etPassword.getText().toString();
                    String rePassword = etRePassword.getText().toString();
                    String tuijian2 = tuijian.getText().toString();
                    String country = String.valueOf(R.string.china);
                    if (password.equals(rePassword)) {
                        presenter.signUpByEmail(email, password, tuijian2, country, challenge, validate, seccode);
                    } else {
                        WonderfulToastUtils.showToast(WonderfulToastUtils.getString(R.string.pwd_diff));
                        return;
                    }

                }
            }
        });
        gt3GeetestUtils.setDialogTouch(true);
    }

    @Override
    public void captchFail(Integer code, String toastMessage) {
        gt3GeetestUtils.gt3Dismiss();
    }

    @Override
    protected String getmTag() {
        return TAG;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        // TODO: inflate a fragment view
        View rootView = super.onCreateView(inflater, container, savedInstanceState);
        unbinder = ButterKnife.bind(this, rootView);
        return rootView;
    }
}
