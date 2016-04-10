//
// Created by arne on 4/10/16.
//

#ifndef CG_VECTOR3_HPP
#define CG_VECTOR3_HPP

class vector3 {
public:

    static vector3 cross(vector3 a, vector3 b) {
        return vector3(
                a.y() * b.z() - a.z() * b.y(),
                a.x() * b.z() - a.z() * b.x(),
                a.x() * b.y() - a.y() * b.x()
        );
    }

    static float dot(vector3 a, vector3 b) {
        return a.x() * b.x() + a.y() * b.y() + a.z() * b.z();
    }

    vector3 &operator-=(const vector3 &rhs) {
        this->data[0] -= rhs.data[0];
        this->data[1] -= rhs.data[1];
        this->data[2] -= rhs.data[2];
        return *this;
    }

    friend vector3 operator-(vector3 lhs, const vector3 &rhs) {
        lhs -= rhs;
        return lhs;
    }

    vector3 &operator*=(const float factor) {
        this->data[0] *= factor;
        this->data[1] *= factor;
        this->data[2] *= factor;
        return *this;
    }

    friend vector3 operator*(vector3 vec, const float factor) {
        return vec *= factor;
    }

    friend vector3 operator+(vector3 lhs, const vector3 &rhs) {
        lhs += rhs;
        return lhs;
    }

    vector3 &operator+=(const vector3 &rhs) {
        this->data[0] += rhs.data[0];
        this->data[1] += rhs.data[1];
        this->data[2] += rhs.data[2];
        return *this;
    }

    float x() {
        return data[0];
    }

    float y() {
        return data[1];
    }

    float z() {
        return data[2];
    }

    vector3() {
        data[0] = 0;
        data[1] = 0;
        data[2] = 0;
    }

    vector3(float x, float y, float z) {
        data[0] = x;
        data[1] = y;
        data[2] = y;
    }

private:
    float data[3];
};

#endif //CG_VECTOR3_HPP
