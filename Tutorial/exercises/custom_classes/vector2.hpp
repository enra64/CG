//
// Created by arne on 4/10/16.
//

#ifndef CG_VECTOR2_HPP
#define CG_VECTOR2_HPP

class vector2 {
public:

    static float cross(vector2 a, vector2 b) {
        return determinant(a, b);
    }

    static float determinant(vector2 a, vector2 b) {
        return a.x() * b.y() + a.y() * b.x();
    }

    static float dot(vector2 a, vector2 b) {
        return a.x() * b.x() + a.y() * b.y();
    }

    vector2 &operator-=(const vector2 &rhs) {
        this->data[0] -= rhs.data[0];
        this->data[1] -= rhs.data[1];
        return *this;
    }

    friend vector2 operator-(vector2 lhs, const vector2 &rhs) {
        lhs -= rhs;
        return lhs;
    }

    friend vector2 operator+(vector2 lhs, const vector2 &rhs) {
        lhs += rhs;
        return lhs;
    }

    vector2 &operator+=(const vector2 &rhs) {
        this->data[0] += rhs.data[0];
        this->data[1] += rhs.data[1];
        return *this;
    }

    float x() {
        return data[0];
    }

    float y() {
        return data[1];
    }

    vector2() {
        data[0] = 0;
        data[1] = 0;
    }

    vector2(float x, float y) {
        data[0] = x;
        data[1] = y;
    }

private:
    float data[2];
};

#endif //CG_VECTOR2_HPP
