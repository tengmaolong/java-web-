package bean;

public class register {

    String register_id = null;
    String Register_pass = null;
    String Register_email = null;

    public String getRegister_id() {
        return register_id;
    }

    public void setRegister_id(String register_id) {
        this.register_id = register_id;
    }

    public String getRegister_pass() {
        return Register_pass;
    }

    public void setRegister_pass(String register_pass) {
        Register_pass = register_pass;
    }

    public String getRegister_email() {
        return Register_email;
    }

    public void setRegister_email(String register_email) {
        Register_email = register_email;
    }

    public String toString(){
        return getRegister_id() + getRegister_pass()+ getRegister_email();
    }
}
